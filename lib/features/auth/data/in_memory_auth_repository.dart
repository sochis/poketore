import 'dart:async';

import '../domain/repositories/auth_repository.dart';

class InMemoryAuthRepository implements AuthRepository {
  String? _currentUserId;
  final StreamController<String?> _controller =
      StreamController<String?>.broadcast();

  @override
  Stream<String?> authStateChanges() => _controller.stream;

  @override
  Future<void> signIn({required String email, required String password}) async {
    _currentUserId = 'guest-user';
    _controller.add(_currentUserId);
  }

  @override
  Future<void> signOut() async {
    _currentUserId = null;
    _controller.add(_currentUserId);
  }
}
