import '../../workout/domain/models/workout_set.dart';
import 'next_load_result.dart';

class LocalRecommendationEngine {
  NextLoadResult recommend({
    required String muscleGroup,
    required int targetReps,
    required WorkoutSet? latestSet,
  }) {
    if (latestSet == null) {
      return const NextLoadResult(
        recommendedWeightKg: 20,
        recommendedReps: 10,
        rationale: 'No history found. Start conservatively.',
        confidence: 0.4,
      );
    }

    final isLargeGroup = {'chest', 'back', 'legs'}.contains(muscleGroup);
    final increment = isLargeGroup ? 2.5 : 1.25;
    var nextWeight = latestSet.weightKg;
    var rationale = 'Keep the same load.';

    final succeeded =
        latestSet.reps >= targetReps && (latestSet.rpe ?? 8.0) <= 8.5;
    final tooHard = (latestSet.rpe ?? 0) >= 9.5;

    if (succeeded) {
      nextWeight += increment;
      rationale = 'Previous set succeeded with controlled effort.';
    } else if (tooHard || latestSet.reps <= targetReps - 2) {
      nextWeight = (latestSet.weightKg * 0.95);
      rationale = 'Previous effort was too hard. Apply deload.';
    }

    return NextLoadResult(
      recommendedWeightKg: double.parse(nextWeight.toStringAsFixed(2)),
      recommendedReps: targetReps,
      rationale: rationale,
      confidence: 0.7,
    );
  }
}
