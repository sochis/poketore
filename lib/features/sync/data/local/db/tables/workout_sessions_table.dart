import 'package:drift/drift.dart';

class WorkoutSessions extends Table {
  TextColumn get id => text()();

  TextColumn get userId => text()();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime()();

  DateTimeColumn get startedAt => dateTime()();

  DateTimeColumn get endedAt => dateTime().nullable()();

  DateTimeColumn get deletedAt => dateTime().nullable()();

  TextColumn get note => text().nullable()();

  TextColumn get itemsJson => text().withDefault(const Constant('[]'))();

  TextColumn get summaryJson => text().nullable()();

  TextColumn get syncStatus => text().withDefault(const Constant('pending'))();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
