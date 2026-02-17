import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/firebase/firestore_providers.dart';
import '../../workout/application/workout_data_providers.dart';
import '../../workout/data/local/workout_session_local_datasource.dart';
import '../../workout/data/remote/workout_session_remote_datasource.dart';
import 'sync_providers.dart';
import 'sync_state.dart';

class SyncRunner {
  SyncRunner({
    required this.localDatasource,
    required this.remoteDatasource,
    required this.userId,
    required this.syncStateNotifier,
    required this.readSyncState,
  });

  final WorkoutSessionLocalDatasource localDatasource;
  final WorkoutSessionRemoteDatasource remoteDatasource;
  final String userId;
  final SyncStateNotifier syncStateNotifier;
  final SyncState Function() readSyncState;

  Future<void> refreshPendingCount() async {
    final count = await localDatasource.pendingCount();
    syncStateNotifier.setPendingCount(count);
  }

  Future<void> runSync() async {
    syncStateNotifier.setSyncing(true);
    try {
      final pending = await localDatasource.findPendingOrFailed();
      for (final session in pending) {
        await remoteDatasource.upsertSession(userId: userId, session: session);
        await localDatasource.markSynced(session.id);
      }

      final since =
          readSyncState().lastSyncedAt ??
          DateTime.fromMillisecondsSinceEpoch(0);
      final remoteUpdated = await remoteDatasource.fetchUpdatedSince(
        userId: userId,
        since: since,
      );
      for (final session in remoteUpdated) {
        await localDatasource.upsertSession(session);
      }

      await refreshPendingCount();
      syncStateNotifier.setLastSyncedAt(DateTime.now().toUtc());
    } finally {
      syncStateNotifier.setSyncing(false);
    }
  }
}

final syncRunnerProvider = Provider<SyncRunner>((ref) {
  final local = ref.watch(workoutSessionLocalDatasourceProvider);
  final remote = ref.watch(workoutSessionRemoteDatasourceProvider);
  final stateNotifier = ref.watch(syncStatusProvider.notifier);
  return SyncRunner(
    localDatasource: local,
    remoteDatasource: remote,
    userId: ref.watch(currentUserIdProvider),
    syncStateNotifier: stateNotifier,
    readSyncState: () => ref.read(syncStatusProvider),
  );
});
