double calculateE1rm({required double weightKg, required int reps}) {
  if (reps <= 1) {
    return weightKg;
  }
  return weightKg * (1 + reps / 30);
}
