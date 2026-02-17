import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../ai/application/ai_providers.dart';
import '../../ai/domain/next_load_result.dart';
import '../../sync/application/sync_runner.dart';
import '../../sync/application/sync_providers.dart';
import '../domain/models/workout_item.dart';
import '../domain/models/workout_session.dart';
import '../domain/models/workout_set.dart';
import '../domain/models/workout_summary.dart';

class WorkoutScreen extends ConsumerStatefulWidget {
  const WorkoutScreen({super.key});

  @override
  ConsumerState<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends ConsumerState<WorkoutScreen> {
  static const _uuid = Uuid();
  WorkoutSession? _activeSession;
  NextLoadResult? _recommendation;

  @override
  Widget build(BuildContext context) {
    final session = _activeSession;
    if (session == null) {
      return Center(
        child: FilledButton(
          onPressed: _startSession,
          child: const Text('Start Workout Session'),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Session started: ${session.startedAt.toLocal()}'),
          const SizedBox(height: 8),
          if (_recommendation != null)
            Card(
              child: ListTile(
                title: Text(
                  'Next Load: ${_recommendation!.recommendedWeightKg}kg x ${_recommendation!.recommendedReps}',
                ),
                subtitle: Text(_recommendation!.rationale),
              ),
            ),
          const SizedBox(height: 8),
          FilledButton(onPressed: _addSetDialog, child: const Text('Add Set')),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: session.items.length,
              itemBuilder: (context, index) {
                final item = session.items[index];
                final totalSets = item.sets.length;
                final lastSet = item.sets.isEmpty ? null : item.sets.last;
                return ListTile(
                  title: Text(item.exerciseNameSnapshot),
                  subtitle: Text(
                    lastSet == null
                        ? 'No sets'
                        : 'sets: $totalSets, last: ${lastSet.weightKg}kg x ${lastSet.reps} (RPE ${lastSet.rpe ?? '-'})',
                  ),
                );
              },
            ),
          ),
          FilledButton.tonal(
            onPressed: _finishSession,
            child: const Text('Finish Session'),
          ),
        ],
      ),
    );
  }

  void _startSession() {
    final now = DateTime.now().toUtc();
    setState(() {
      _recommendation = null;
      _activeSession = WorkoutSession(
        id: _uuid.v4(),
        userId: 'guest-user',
        createdAt: now,
        updatedAt: now,
        startedAt: now,
      );
    });
  }

  Future<void> _addSetDialog() async {
    final exerciseController = TextEditingController(text: 'Bench Press');
    final weightController = TextEditingController(text: '40');
    final repsController = TextEditingController(text: '8');
    final rpeController = TextEditingController(text: '8.0');

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Set'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: exerciseController,
                decoration: const InputDecoration(labelText: 'Exercise'),
              ),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(labelText: 'Weight (kg)'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              TextField(
                controller: repsController,
                decoration: const InputDecoration(labelText: 'Reps'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: rpeController,
                decoration: const InputDecoration(labelText: 'RPE (optional)'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (confirmed != true || _activeSession == null) {
      return;
    }

    final name = exerciseController.text.trim();
    final weight = double.tryParse(weightController.text.trim()) ?? 0;
    final reps = int.tryParse(repsController.text.trim()) ?? 0;
    final rpe = double.tryParse(rpeController.text.trim());

    final now = DateTime.now().toUtc();
    final set = WorkoutSet(
      id: _uuid.v4(),
      createdAt: now,
      updatedAt: now,
      weightKg: weight,
      reps: reps,
      rpe: rpe,
    );

    final current = _activeSession!;
    final index = current.items.indexWhere(
      (i) => i.exerciseNameSnapshot == name,
    );
    final items = [...current.items];
    if (index == -1) {
      items.add(
        WorkoutItem(
          id: _uuid.v4(),
          createdAt: now,
          updatedAt: now,
          exerciseId: name.toLowerCase().replaceAll(' ', '_'),
          exerciseNameSnapshot: name,
          sets: [set],
        ),
      );
    } else {
      final item = items[index];
      items[index] = item.copyWith(updatedAt: now, sets: [...item.sets, set]);
    }

    setState(() {
      _activeSession = current.copyWith(updatedAt: now, items: items);
    });

    final apiClient = ref.read(aiApiClientProvider);
    final localRule = ref.read(localRecommendationEngineProvider);
    final remote = await apiClient.requestNextLoad({
      'exerciseName': name,
      'latestSet': set.toJson(),
      'targetReps': 8,
    });
    final fallback = localRule.recommend(
      muscleGroup: 'chest',
      targetReps: 8,
      latestSet: set,
    );
    setState(() {
      _recommendation = remote ?? fallback;
    });
  }

  Future<void> _finishSession() async {
    final current = _activeSession;
    if (current == null) {
      return;
    }

    final now = DateTime.now().toUtc();
    final summary = _calculateSummary(current.items);
    final finished = current.copyWith(
      endedAt: now,
      updatedAt: now,
      summary: summary,
      syncStatus: SyncStatus.pending,
    );

    await ref.read(localWorkoutDatasourceProvider).upsertSession(finished);
    await ref.read(syncRunnerProvider).refreshPendingCount();

    if (!mounted) {
      return;
    }
    setState(() {
      _activeSession = null;
      _recommendation = null;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Saved: sets=${summary.totalSets}, reps=${summary.totalReps}, volume=${summary.totalVolume.toStringAsFixed(1)}',
        ),
      ),
    );
  }

  WorkoutSummary _calculateSummary(List<WorkoutItem> items) {
    var totalSets = 0;
    var totalReps = 0;
    var totalVolume = 0.0;
    for (final item in items) {
      totalSets += item.sets.length;
      for (final set in item.sets) {
        totalReps += set.reps;
        totalVolume += set.weightKg * set.reps;
      }
    }
    return WorkoutSummary(
      totalSets: totalSets,
      totalReps: totalReps,
      totalVolume: totalVolume,
    );
  }
}
