enum ExportMode {
  single,
  sheet4x6,
  sheetA4,
}

extension ExportModeLabel on ExportMode {
  String get label {
    switch (this) {
      case ExportMode.single:
        return "Single Photo";
      case ExportMode.sheet4x6:
        return "4x6 Print Sheet";
      case ExportMode.sheetA4:
        return "A4 Print Sheet";
    }
  }
}
