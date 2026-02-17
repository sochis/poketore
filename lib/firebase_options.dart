import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    throw UnsupportedError(
      'Firebase options are not configured yet. '
      'Run flutterfire configure to generate lib/firebase_options.dart.',
    );
  }

  static TargetPlatform get platform => defaultTargetPlatform;
}
