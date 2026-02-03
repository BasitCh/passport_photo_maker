import "dart:typed_data";

import "package:crop_your_image/crop_your_image.dart";
import "package:flutter/material.dart";

class CropScreen extends StatefulWidget {
  const CropScreen({
    super.key,
    required this.imageBytes,
    required this.aspectRatio,
  });

  final Uint8List imageBytes;
  final double aspectRatio;

  @override
  State<CropScreen> createState() => _CropScreenState();
}

class _CropScreenState extends State<CropScreen> {
  final CropController _controller = CropController();
  bool _isCropping = false;

  void _onCrop() {
    setState(() => _isCropping = true);
    _controller.crop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adjust Crop"),
        actions: [
          TextButton(
            onPressed: _isCropping ? null : _onCrop,
            child: const Text("Done"),
          ),
        ],
      ),
      body: Stack(
        children: [
          Crop(
            controller: _controller,
            image: widget.imageBytes,
            aspectRatio: widget.aspectRatio,
            withCircleUi: false,
            onCropped: (croppedBytes) {
              if (!mounted) {
                return;
              }
              Navigator.of(context).pop(croppedBytes);
            },
          ),
          if (_isCropping)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
