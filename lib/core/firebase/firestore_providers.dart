import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/auth/application/auth_providers.dart';
import '../error/app_error.dart';
import 'firebase_runtime_state.dart';

final firestoreProvider = Provider<FirebaseFirestore>((_) {
  return FirebaseFirestore.instance;
});

final currentUserIdProvider = Provider<String>((ref) {
  if (!FirebaseRuntimeState.initialized) {
    return 'guest-user';
  }
  final user = ref.watch(firebaseAuthProvider).currentUser;
  if (user == null) {
    throw const UnknownError('User is not authenticated.');
  }
  return user.uid;
});
