import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/models/exercise.dart';

class ExerciseRemoteDatasource {
  ExerciseRemoteDatasource(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> _collection(String userId) {
    return _firestore.collection('users').doc(userId).collection('exercises');
  }

  Future<void> upsertExercise({
    required String userId,
    required Exercise exercise,
  }) async {
    await _collection(userId).doc(exercise.id).set(exercise.toJson());
  }

  Future<List<Exercise>> listExercises(String userId) async {
    final query = await _collection(userId).get();
    return query.docs.map((doc) => Exercise.fromJson(doc.data())).toList();
  }
}
