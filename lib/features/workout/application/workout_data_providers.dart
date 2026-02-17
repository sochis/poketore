import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/firebase/firestore_providers.dart';
import '../../sync/application/local_db_providers.dart';
import '../data/local/workout_session_local_datasource.dart';
import '../data/remote/workout_session_remote_datasource.dart';

final workoutSessionLocalDatasourceProvider =
    Provider<WorkoutSessionLocalDatasource>((ref) {
      return WorkoutSessionLocalDatasource(ref.watch(appDatabaseProvider));
    });

final workoutSessionRemoteDatasourceProvider =
    Provider<WorkoutSessionRemoteDatasource>((ref) {
      return WorkoutSessionRemoteDatasource(ref.watch(firestoreProvider));
    });
