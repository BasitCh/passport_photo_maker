enum SizeTarget {
  auto,
  kb200,
  kb500,
  mb1,
}

extension SizeTargetLabel on SizeTarget {
  String get label {
    switch (this) {
      case SizeTarget.auto:
        return "Auto";
      case SizeTarget.kb200:
        return "200KB";
      case SizeTarget.kb500:
        return "500KB";
      case SizeTarget.mb1:
        return "1MB";
    }
  }

  int? get maxBytes {
    switch (this) {
      case SizeTarget.auto:
        return null;
      case SizeTarget.kb200:
        return 200 * 1024;
      case SizeTarget.kb500:
        return 500 * 1024;
      case SizeTarget.mb1:
        return 1024 * 1024;
    }
  }
}
