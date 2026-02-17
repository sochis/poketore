import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../workout/data/local/workout_session_local_datasource.dart';
import '../../workout/application/workout_data_providers.dart';
import 'sync_state.dart';

class SyncStateNotifier extends Notifier<SyncState> {
  @override
  SyncState build() {
    return const SyncState(
      isSyncing: false,
      pendingCount: 0,
      lastSyncedAt: null,
    );
  }

  void setSyncing(bool value) {
    state = state.copyWith(isSyncing: value);
  }

  void setPendingCount(int value) {
    state = state.copyWith(pendingCount: value);
  }

  void setLastSyncedAt(DateTime? value) {
    state = state.copyWith(lastSyncedAt: value);
  }
}

final syncStatusProvider = NotifierProvider<SyncStateNotifier, SyncState>(
  SyncStateNotifier.new,
);

final localWorkoutDatasourceProvider = Provider<WorkoutSessionLocalDatasource>((
  ref,
) {
  return ref.watch(workoutSessionLocalDatasourceProvider);
});
