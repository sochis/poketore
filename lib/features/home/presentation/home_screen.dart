import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../ai/application/ai_providers.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  String _dailyPlan = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadDailyPlan();
  }

  Future<void> _loadDailyPlan() async {
    final plan = await ref.read(aiApiClientProvider).requestDailyPlan({
      'goal': 'hypertrophy',
      'weeklyFrequency': 3,
    });
    if (!mounted) return;
    setState(() {
      _dailyPlan =
          plan ??
          'Fallback plan: Chest + Triceps. Keep RPE around 8 and avoid sudden load jumps.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: ListTile(
              title: const Text('Today\'s Menu'),
              subtitle: Text(_dailyPlan),
            ),
          ),
          const SizedBox(height: 8),
          const Card(
            child: ListTile(
              title: Text('Coach note'),
              subtitle: Text('Safety first. Increase load gradually.'),
            ),
          ),
        ],
      ),
    );
  }
}
