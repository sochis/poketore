import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app/router/app_router.dart';
import '../../sync/application/sync_runner.dart';
import '../../sync/application/sync_providers.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final syncState = ref.watch(syncStatusProvider);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Last sync: ${syncState.lastSyncedAt?.toIso8601String() ?? '-'}\n'
                'Pending: ${syncState.pendingCount}\n'
                'Running: ${syncState.isSyncing}',
              ),
            ),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () async {
              await ref.read(syncRunnerProvider).runSync();
            },
            child: const Text('Manual Sync'),
          ),
          const SizedBox(height: 12),
          FilledButton.tonal(
            onPressed: () async {
              await ref.read(authStateProvider.notifier).signOut();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
