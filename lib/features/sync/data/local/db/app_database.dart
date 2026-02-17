import 'package:drift/drift.dart';

import 'app_database_connection_native.dart';
import 'tables/workout_sessions_table.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [WorkoutSessions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(openConnectionImpl());

  @override
  int get schemaVersion => 1;
}
