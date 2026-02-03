import "dart:io";

import "package:flutter/material.dart";
import "package:share_plus/share_plus.dart";

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.file,
    required this.fileSizeBytes,
    required this.onCreateAnother,
    required this.onOpen,
  });

  final File file;
  final int fileSizeBytes;
  final VoidCallback onCreateAnother;
  final VoidCallback onOpen;

  String get _fileSizeLabel {
    final kb = fileSizeBytes / 1024;
    if (kb < 1024) {
      return "${kb.toStringAsFixed(1)} KB";
    }
    final mb = kb / 1024;
    return "${mb.toStringAsFixed(2)} MB";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      appBar: AppBar(
        title: const Text("Export Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(file, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Saved successfully ✓",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              file.path.split("/").last,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF4B5563),
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              _fileSizeLabel,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF6B7280),
                  ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: onOpen,
                    child: const Text("Open"),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Share.shareXFiles([XFile(file.path)]);
                    },
                    child: const Text("Share"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: onCreateAnother,
                child: const Text("Save Another"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
