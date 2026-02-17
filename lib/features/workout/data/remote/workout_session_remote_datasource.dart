import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/models/workout_session.dart';

class WorkoutSessionRemoteDatasource {
  WorkoutSessionRemoteDatasource(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> _collection(String userId) {
    return _firestore.collection('users').doc(userId).collection('sessions');
  }

  Future<void> upsertSession({
    required String userId,
    required WorkoutSession session,
  }) async {
    await _collection(userId).doc(session.id).set(session.toJson());
  }

  Future<List<WorkoutSession>> fetchUpdatedSince({
    required String userId,
    required DateTime since,
  }) async {
    final query = await _collection(
      userId,
    ).where('updatedAt', isGreaterThan: Timestamp.fromDate(since)).get();
    return query.docs
        .map((doc) => WorkoutSession.fromJson(doc.data()))
        .toList();
  }
}
