class SyncState {
  const SyncState({
    required this.isSyncing,
    required this.pendingCount,
    required this.lastSyncedAt,
  });

  final bool isSyncing;
  final int pendingCount;
  final DateTime? lastSyncedAt;

  SyncState copyWith({
    bool? isSyncing,
    int? pendingCount,
    DateTime? lastSyncedAt,
  }) {
    return SyncState(
      isSyncing: isSyncing ?? this.isSyncing,
      pendingCount: pendingCount ?? this.pendingCount,
      lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
    );
  }
}
