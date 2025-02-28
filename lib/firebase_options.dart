// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA3Eq3nDkwE8g6dtcpGUm2URUtNEQtXTAE',
    appId: '1:948394829737:web:58d958a9857081882446b8',
    messagingSenderId: '948394829737',
    projectId: 'finalauth-af6d9',
    authDomain: 'finalauth-af6d9.firebaseapp.com',
    storageBucket: 'finalauth-af6d9.appspot.com',
    measurementId: 'G-T8GL7PMDF2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVmXpF50w31Q3KDz1gm5oEc8UCelYuh8w',
    appId: '1:948394829737:android:51e23c227a4c62612446b8',
    messagingSenderId: '948394829737',
    projectId: 'finalauth-af6d9',
    storageBucket: 'finalauth-af6d9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACtIDeK12UzbCOIIei2uch1wqOi6xlf_Q',
    appId: '1:948394829737:ios:f6ce7c62d9a5e2662446b8',
    messagingSenderId: '948394829737',
    projectId: 'finalauth-af6d9',
    storageBucket: 'finalauth-af6d9.appspot.com',
    iosBundleId: 'com.example.base2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACtIDeK12UzbCOIIei2uch1wqOi6xlf_Q',
    appId: '1:948394829737:ios:f6ce7c62d9a5e2662446b8',
    messagingSenderId: '948394829737',
    projectId: 'finalauth-af6d9',
    storageBucket: 'finalauth-af6d9.appspot.com',
    iosBundleId: 'com.example.base2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA3Eq3nDkwE8g6dtcpGUm2URUtNEQtXTAE',
    appId: '1:948394829737:web:3b6e0f3f7f0560b82446b8',
    messagingSenderId: '948394829737',
    projectId: 'finalauth-af6d9',
    authDomain: 'finalauth-af6d9.firebaseapp.com',
    storageBucket: 'finalauth-af6d9.appspot.com',
    measurementId: 'G-VHP0F71CKC',
  );

}