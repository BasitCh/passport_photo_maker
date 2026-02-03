import "dart:async";
import "dart:io";
import "dart:typed_data";

import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";
import "package:intl/intl.dart";
import "package:open_filex/open_filex.dart";
import "package:path_provider/path_provider.dart";
import "package:permission_handler/permission_handler.dart";

import "../models/background_option.dart";
import "../models/export_mode.dart";
import "../models/photo_preset.dart";
import "../models/size_target.dart";
import "../services/ad_service.dart";
import "../services/image_processing.dart";
import "crop_screen.dart";
import "result_screen.dart";

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  final ImagePicker _picker = ImagePicker();
  final InterstitialAdManager _interstitialManager = InterstitialAdManager();

  PhotoPreset _preset = PhotoPreset.linkedIn;
  BackgroundOption _background = BackgroundOption.white;
  ExportMode _exportMode = ExportMode.single;
  SizeTarget _sizeTarget = SizeTarget.auto;
  double _edgeSmooth = 20;
  double _feather = 10;
  bool _enhanceEdges = true;

  Uint8List? _originalBytes;
  Uint8List? _croppedBytes;
  Uint8List? _previewBytes;
  SegmentationResult? _mask;

  bool _isProcessing = false;
  String _processingLabel = "Processing...";
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _loadImage(widget.imagePath);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _interstitialManager.dispose();
    super.dispose();
  }

  Future<void> _loadImage(String path) async {
    final bytes = await File(path).readAsBytes();
    if (!mounted) {
      return;
    }
    setState(() {
      _originalBytes = bytes;
      _mask = null;
      _previewBytes = null;
    });
    await _autoCropAndProcess();
  }

  Future<void> _autoCropAndProcess() async {
    if (_originalBytes == null) {
      return;
    }
    _setProcessing("Preparing crop...");
    final cropped = await ImageProcessing.autoCropToAspect(
      _originalBytes!,
      _preset.ratio,
    );
    _croppedBytes = cropped;
    await _runSegmentationAndPreview(regenerateMask: true);
  }

  Future<void> _runSegmentationAndPreview({required bool regenerateMask}) async {
    if (_croppedBytes == null) {
      return;
    }
    if (regenerateMask) {
      _setProcessing("Removing background...");
      _mask = await ImageProcessing.segmentPerson(_croppedBytes!);
    }

    _setProcessing("Preparing preview...");
    final preview = await ImageProcessing.renderPreview(
      sourceBytes: _croppedBytes!,
      mask: _mask,
      background: _background,
      edgeSmooth: _edgeSmooth,
      feather: _feather,
      enhanceEdges: _enhanceEdges,
      outputWidth: _preset.outputWidth,
      outputHeight: _preset.outputHeight,
    );

    if (!mounted) {
      return;
    }
    setState(() {
      _previewBytes = preview;
      _isProcessing = false;
    });
  }

  void _setProcessing(String label) {
    setState(() {
      _isProcessing = true;
      _processingLabel = label;
    });
  }

  void _schedulePreviewUpdate() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 200), () {
      _runSegmentationAndPreview(regenerateMask: false);
    });
  }

  Future<void> _pickNewPhoto() async {
    final file = await _picker.pickImage(source: ImageSource.gallery);
    if (file == null) {
      return;
    }
    await _loadImage(file.path);
  }

  Future<void> _openCropper() async {
    if (_originalBytes == null) {
      return;
    }
    final croppedBytes = await Navigator.of(context).push<Uint8List>(
      MaterialPageRoute(
        builder: (_) => CropScreen(
          imageBytes: _originalBytes!,
          aspectRatio: _preset.ratio,
        ),
      ),
    );
    if (croppedBytes == null) {
      return;
    }
    setState(() {
      _croppedBytes = croppedBytes;
      _mask = null;
      _previewBytes = null;
    });
    await _runSegmentationAndPreview(regenerateMask: true);
  }

  Future<void> _changePreset(PhotoPreset preset) async {
    setState(() {
      _preset = preset;
    });
    await _autoCropAndProcess();
  }

  Future<void> _exportAndSave() async {
    if (_croppedBytes == null) {
      return;
    }
    _setProcessing("Preparing export...");

    final exportBytes = await ImageProcessing.buildExport(
      sourceBytes: _croppedBytes!,
      mask: _mask,
      background: _background,
      edgeSmooth: _edgeSmooth,
      feather: _feather,
      enhanceEdges: _enhanceEdges,
      outputWidth: _preset.outputWidth,
      outputHeight: _preset.outputHeight,
      exportMode: _exportMode,
      targetBytes: _sizeTarget.maxBytes,
    );

    if (!mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Final size: ${_formatSize(exportBytes.lengthInBytes)}")),
    );

    final savedFile = await _saveFile(exportBytes);
    if (!mounted) {
      return;
    }

    setState(() {
      _isProcessing = false;
    });

    if (savedFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to save. Try again.")),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Saved successfully")),
    );

    _interstitialManager.recordExportAndShowIfNeeded(() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ResultScreen(
            file: savedFile,
            fileSizeBytes: exportBytes.lengthInBytes,
            onCreateAnother: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            onOpen: () => OpenFilex.open(savedFile.path),
          ),
        ),
      );
    });
  }

  Future<File?> _saveFile(Uint8List bytes) async {
    final hasPermission = await _ensureSavePermission();
    if (!hasPermission) {
      return null;
    }

    final directory = await _resolveSaveDirectory();
    if (directory == null) {
      return null;
    }

    final timestamp = DateFormat("yyyyMMdd_HHmmss").format(DateTime.now());
    final filename = "PPM_${_preset.id}_$timestamp.jpg";
    final file = File("${directory.path}/$filename");
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  Future<bool> _ensureSavePermission() async {
    if (Platform.isIOS) {
      final status = await Permission.photos.request();
      return status.isGranted;
    }
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<Directory?> _resolveSaveDirectory() async {
    if (Platform.isAndroid) {
      final dirs = await getExternalStorageDirectories(
        type: StorageDirectory.pictures,
      );
      if (dirs == null || dirs.isEmpty) {
        return null;
      }
      final picturesDir = Directory("${dirs.first.path}/ProfessionalPhotoMaker");
      if (!await picturesDir.exists()) {
        await picturesDir.create(recursive: true);
      }
      return picturesDir;
    }

    final docsDir = await getApplicationDocumentsDirectory();
    final outputDir = Directory("${docsDir.path}/ProfessionalPhotoMaker");
    if (!await outputDir.exists()) {
      await outputDir.create(recursive: true);
    }
    return outputDir;
  }

  String _formatSize(int bytes) {
    final kb = bytes / 1024;
    if (kb < 1024) {
      return "${kb.toStringAsFixed(1)} KB";
    }
    final mb = kb / 1024;
    return "${mb.toStringAsFixed(2)} MB";
  }

  @override
  Widget build(BuildContext context) {
    final preview = _previewBytes;
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        title: const Text("Editor"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _PreviewArea(
                      preview: preview,
                      isProcessing: _isProcessing,
                      label: _processingLabel,
                    ),
                    const SizedBox(height: 20),
                    _SectionCard(
                      title: "Size",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              for (final preset in PhotoPreset.all)
                                ChoiceChip(
                                  label: Text(preset.label),
                                  selected: preset.id == _preset.id,
                                  onSelected: (_) => _changePreset(preset),
                                ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton.icon(
                              onPressed: _openCropper,
                              icon: const Icon(Icons.crop),
                              label: const Text("Adjust Crop"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    _SectionCard(
                      title: "Background",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              for (final option in BackgroundOption.all)
                                _BackgroundChip(
                                  option: option,
                                  selected: option.id == _background.id,
                                  onTap: () {
                                    setState(() => _background = option);
                                    _schedulePreviewUpdate();
                                  },
                                ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          _SliderRow(
                            label: "Edge Smooth",
                            value: _edgeSmooth,
                            onChanged: (value) {
                              setState(() => _edgeSmooth = value);
                              _schedulePreviewUpdate();
                            },
                          ),
                          _SliderRow(
                            label: "Feather",
                            value: _feather,
                            onChanged: (value) {
                              setState(() => _feather = value);
                              _schedulePreviewUpdate();
                            },
                          ),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text("Enhance Subject Edges"),
                            value: _enhanceEdges,
                            onChanged: (value) {
                              setState(() => _enhanceEdges = value);
                              _schedulePreviewUpdate();
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    _SectionCard(
                      title: "Export",
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: ExportMode.values
                                .map(
                                  (mode) => ChoiceChip(
                                    label: Text(mode.label),
                                    selected: mode == _exportMode,
                                    onSelected: (_) {
                                      setState(() => _exportMode = mode);
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: SizeTarget.values
                                .map(
                                  (target) => ChoiceChip(
                                    label: Text(target.label),
                                    selected: target == _sizeTarget,
                                    onSelected: (_) {
                                      setState(() => _sizeTarget = target);
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Photos stay on your device.",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color(0xFF6B7280),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x11000000),
                          blurRadius: 12,
                          offset: Offset(0, -4),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: _isProcessing ? null : _pickNewPhoto,
                            child: const Text("Change Photo"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: ElevatedButton(
                            onPressed:
                                _isProcessing || preview == null ? null : _exportAndSave,
                            child: const Text("Save / Export"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Center(child: BannerAdWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PreviewArea extends StatelessWidget {
  const _PreviewArea({
    required this.preview,
    required this.isProcessing,
    required this.label,
  });

  final Uint8List? preview;
  final bool isProcessing;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5E7EB)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11000000),
            blurRadius: 12,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Stack(
        children: [
          if (preview != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.memory(
                preview!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            )
          else
            const Center(
              child: Text("Upload a photo to preview"),
            ),
          if (isProcessing)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.45),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

class _BackgroundChip extends StatelessWidget {
  const _BackgroundChip({
    required this.option,
    required this.selected,
    required this.onTap,
  });

  final BackgroundOption option;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF111827) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? const Color(0xFF111827) : const Color(0xFFE5E7EB),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 14,
              height: 14,
              decoration: BoxDecoration(
                color: option.color,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFFCBD5F5)),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              option.label,
              style: TextStyle(
                color: selected ? Colors.white : const Color(0xFF111827),
                fontWeight: FontWeight.w600,
              ),
            ),
            if (selected)
              const Padding(
                padding: EdgeInsets.only(left: 6),
                child: Icon(Icons.check, size: 16, color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}

class _SliderRow extends StatelessWidget {
  const _SliderRow({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
