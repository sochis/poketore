import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/firebase/firebase_initializer.dart';
import '../core/firebase/firebase_runtime_state.dart';
import '../core/logging/app_logger.dart';
import 'app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await initializeFirebase();
    FirebaseRuntimeState.initialized = true;
  } catch (error, stackTrace) {
    FirebaseRuntimeState.initialized = false;
    appLogger.w(
      'Firebase not initialized yet (run flutterfire configure).',
      error: error,
      stackTrace: stackTrace,
    );
  }
  runApp(const ProviderScope(child: PoketoreApp()));
}
