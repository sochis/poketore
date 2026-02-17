import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../sync/application/sync_providers.dart';
import '../../workout/domain/models/workout_session.dart';
import '../domain/e1rm_calculator.dart';

class AnalyticsScreen extends ConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<List<WorkoutSession>>(
      future: ref.read(localWorkoutDatasourceProvider).findAllSessions(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final sessions = snapshot.data!;
        if (sessions.isEmpty) {
          return const Center(child: Text('No session history yet.'));
        }

        final latest = sessions.last;
        final latestSet =
            latest.items.isNotEmpty && latest.items.last.sets.isNotEmpty
            ? latest.items.last.sets.last
            : null;
        final e1rm = latestSet == null
            ? 0.0
            : calculateE1rm(weightKg: latestSet.weightKg, reps: latestSet.reps);

        final totalVolume = sessions
            .map((s) => s.summary?.totalVolume ?? 0.0)
            .fold<double>(0.0, (a, b) => a + b);

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: ListTile(
                  title: const Text('Estimated 1RM (latest)'),
                  subtitle: Text('${e1rm.toStringAsFixed(1)} kg'),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Total sessions'),
                  subtitle: Text(sessions.length.toString()),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Total volume'),
                  subtitle: Text(totalVolume.toStringAsFixed(1)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
