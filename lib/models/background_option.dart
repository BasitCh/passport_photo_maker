import "package:flutter/material.dart";

class BackgroundOption {
  const BackgroundOption({
    required this.id,
    required this.label,
    required this.color,
    this.isBlur = false,
  });

  final String id;
  final String label;
  final Color color;
  final bool isBlur;

  static const white = BackgroundOption(
    id: "white",
    label: "White",
    color: Color(0xFFFFFFFF),
  );

  static const lightGray = BackgroundOption(
    id: "light_gray",
    label: "Light Gray",
    color: Color(0xFFF2F2F2),
  );

  static const lightBlue = BackgroundOption(
    id: "light_blue",
    label: "Light Blue",
    color: Color(0xFFE8F1FF),
  );

  static const blur = BackgroundOption(
    id: "blur",
    label: "Blur",
    color: Color(0xFFDDDDDD),
    isBlur: true,
  );

  static const List<BackgroundOption> all = [
    white,
    lightGray,
    lightBlue,
    blur,
  ];
}
