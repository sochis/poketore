import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/local/db/app_database.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});
