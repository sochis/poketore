class NextLoadResult {
  const NextLoadResult({
    required this.recommendedWeightKg,
    required this.recommendedReps,
    required this.rationale,
    required this.confidence,
  });

  final double recommendedWeightKg;
  final int recommendedReps;
  final String rationale;
  final double confidence;

  factory NextLoadResult.fromJson(Map<String, dynamic> json) {
    return NextLoadResult(
      recommendedWeightKg: (json['recommendedWeightKg'] as num).toDouble(),
      recommendedReps: json['recommendedReps'] as int,
      rationale: json['rationale'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendedWeightKg': recommendedWeightKg,
      'recommendedReps': recommendedReps,
      'rationale': rationale,
      'confidence': confidence,
    };
  }
}
