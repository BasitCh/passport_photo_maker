import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class ExportDialogWidget extends StatelessWidget {
  const ExportDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppTheme.spacing24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Export Options', style: AppTheme.headingLarge),
          const SizedBox(height: AppTheme.spacing24),

          Text(
            'Choose export size from the Export tab',
            style: AppTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: AppTheme.spacing24),

          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
