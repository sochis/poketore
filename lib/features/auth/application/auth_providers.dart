import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/firebase/firebase_runtime_state.dart';
import '../data/firebase_auth_repository.dart';
import '../data/in_memory_auth_repository.dart';
import '../domain/repositories/auth_repository.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((_) {
  return FirebaseAuth.instance;
});

final inMemoryAuthRepositoryProvider = Provider<InMemoryAuthRepository>((_) {
  return InMemoryAuthRepository();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  if (!FirebaseRuntimeState.initialized) {
    return ref.watch(inMemoryAuthRepositoryProvider);
  }
  return FirebaseAuthRepository(ref.watch(firebaseAuthProvider));
});
