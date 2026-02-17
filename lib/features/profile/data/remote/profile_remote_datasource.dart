import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/models/user_profile.dart';

class ProfileRemoteDatasource {
  ProfileRemoteDatasource(this._firestore);

  final FirebaseFirestore _firestore;

  DocumentReference<Map<String, dynamic>> _doc(String userId) {
    return _firestore
        .collection('users')
        .doc(userId)
        .collection('profile')
        .doc('profile');
  }

  Future<void> upsertProfile(UserProfile profile) async {
    await _doc(profile.userId).set(profile.toJson());
  }

  Future<UserProfile?> fetchProfile(String userId) async {
    final snapshot = await _doc(userId).get();
    final data = snapshot.data();
    if (data == null) return null;
    return UserProfile.fromJson(data);
  }
}
