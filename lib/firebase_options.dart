// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBk5NABao_ftNpAQYBc6KvSDI3VyPercSw',
    appId: '1:678121329494:web:1e673e52fcb3732ecb3cf7',
    messagingSenderId: '678121329494',
    projectId: 'baf-app',
    authDomain: 'baf-app.firebaseapp.com',
    storageBucket: 'baf-app.appspot.com',
    measurementId: 'G-75EWXDT0E9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAkQwIQBQcWdWUu7ekXXAW_5PlbzyCeVw0',
    appId: '1:678121329494:android:7ca9189b339e0c10cb3cf7',
    messagingSenderId: '678121329494',
    projectId: 'baf-app',
    storageBucket: 'baf-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_07R0SoMVbDN2yMSpqLA71dHRPD4o3dc',
    appId: '1:678121329494:ios:3a58220ff6cc723ccb3cf7',
    messagingSenderId: '678121329494',
    projectId: 'baf-app',
    storageBucket: 'baf-app.appspot.com',
    iosClientId: '678121329494-2shig0io2ebntiad3blhq51nt4jkle0g.apps.googleusercontent.com',
    iosBundleId: 'app.baf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_07R0SoMVbDN2yMSpqLA71dHRPD4o3dc',
    appId: '1:678121329494:ios:0140148f6d15061fcb3cf7',
    messagingSenderId: '678121329494',
    projectId: 'baf-app',
    storageBucket: 'baf-app.appspot.com',
    iosClientId: '678121329494-ic1p2n303sj2924s7qouk3jr2eiif5e5.apps.googleusercontent.com',
    iosBundleId: 'app.app',
  );
}
