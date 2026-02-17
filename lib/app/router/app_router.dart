import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/analytics/presentation/analytics_screen.dart';
import '../../features/auth/application/auth_providers.dart';
import '../../features/auth/domain/auth_state.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/workout/presentation/workout_screen.dart';
import 'main_shell_screen.dart';

const String loginPath = '/login';
const String homePath = '/home';
const String workoutPath = '/workout';
const String analyticsPath = '/analytics';
const String profilePath = '/profile';

class AuthStateNotifier extends Notifier<AuthState> {
  @override
  AuthState build() => AuthState.unauthenticated;

  Future<void> signIn({required String email, required String password}) async {
    await ref
        .read(authRepositoryProvider)
        .signIn(email: email, password: password);
    state = AuthState.authenticated;
  }

  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    state = AuthState.unauthenticated;
  }

  void setStateFromUserId(String? userId) {
    state = userId == null
        ? AuthState.unauthenticated
        : AuthState.authenticated;
  }
}

final authStateProvider = NotifierProvider<AuthStateNotifier, AuthState>(
  AuthStateNotifier.new,
);

final authStateSyncProvider = Provider<void>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  final sub = repository.authStateChanges().listen((userId) {
    ref.read(authStateProvider.notifier).setStateFromUserId(userId);
  });
  ref.onDispose(sub.cancel);
});

final appRouterProvider = Provider<GoRouter>((ref) {
  ref.watch(authStateSyncProvider);
  final authState = ref.watch(authStateProvider);
  final isAuthenticated = authState == AuthState.authenticated;

  return GoRouter(
    initialLocation: homePath,
    routes: <RouteBase>[
      GoRoute(path: loginPath, builder: (_, _) => const LoginScreen()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShellScreen(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(path: homePath, builder: (_, _) => const HomeScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: workoutPath,
                builder: (_, _) => const WorkoutScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: analyticsPath,
                builder: (_, _) => const AnalyticsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: profilePath,
                builder: (_, _) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (_, state) {
      final isLoginRoute = state.matchedLocation == loginPath;
      if (!isAuthenticated && !isLoginRoute) {
        return loginPath;
      }
      if (isAuthenticated && isLoginRoute) {
        return homePath;
      }
      return null;
    },
  );
});
