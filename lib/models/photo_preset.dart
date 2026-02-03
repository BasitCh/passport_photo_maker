class PhotoPreset {
  const PhotoPreset({
    required this.id,
    required this.label,
    required this.ratio,
    required this.outputWidth,
    required this.outputHeight,
  });

  final String id;
  final String label;
  final double ratio;
  final int outputWidth;
  final int outputHeight;

  static const linkedIn = PhotoPreset(
    id: "linkedin",
    label: "LinkedIn DP",
    ratio: 1 / 1,
    outputWidth: 800,
    outputHeight: 800,
  );

  static const jobCv = PhotoPreset(
    id: "job_cv",
    label: "Job / CV",
    ratio: 2 / 3,
    outputWidth: 600,
    outputHeight: 900,
  );

  static const passport = PhotoPreset(
    id: "passport",
    label: "Passport / Visa",
    ratio: 2 / 3,
    outputWidth: 600,
    outputHeight: 900,
  );

  static const cnic = PhotoPreset(
    id: "cnic",
    label: "CNIC / ID",
    ratio: 3 / 4,
    outputWidth: 750,
    outputHeight: 1000,
  );

  static const List<PhotoPreset> all = [
    linkedIn,
    jobCv,
    passport,
    cnic,
  ];
}
