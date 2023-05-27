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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBkn956UbYB1h-6ovuz2zWU4lqLuVIitW0',
    appId: '1:617689912858:web:e0eeb1571f92b2a178a3a3',
    messagingSenderId: '617689912858',
    projectId: 'pass-document',
    authDomain: 'pass-document.firebaseapp.com',
    storageBucket: 'pass-document.appspot.com',
    measurementId: 'G-7BLE48F6S1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4KwxMWijnAPboL7pL-HcEljm1XlKEhvk',
    appId: '1:617689912858:android:1629c68318c1f0b978a3a3',
    messagingSenderId: '617689912858',
    projectId: 'pass-document',
    storageBucket: 'pass-document.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXxrfespXEGbxr8iwcpYKTZww_NxQZ82Q',
    appId: '1:617689912858:ios:ff4bfa315b6700b078a3a3',
    messagingSenderId: '617689912858',
    projectId: 'pass-document',
    storageBucket: 'pass-document.appspot.com',
    iosClientId: '617689912858-m90bag35pmkdgdbbqci69mffkbkslv7g.apps.googleusercontent.com',
    iosBundleId: 'com.cluster.passdocument',
  );
}