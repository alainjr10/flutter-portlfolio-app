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
    apiKey: 'AIzaSyDbMqoeM37EBa-H5ezOGCdmGHkf5gM-tLo',
    appId: '1:194041596044:web:7c93f7325a0d1e1858d3a9',
    messagingSenderId: '194041596044',
    projectId: 'dyce-portfolio',
    authDomain: 'dyce-portfolio.firebaseapp.com',
    storageBucket: 'dyce-portfolio.appspot.com',
    measurementId: 'G-RMX8FWSL7R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3dP-2ltgMLlKkqH03T4GubpL8qPVaAR8',
    appId: '1:194041596044:android:555820774ffec61458d3a9',
    messagingSenderId: '194041596044',
    projectId: 'dyce-portfolio',
    storageBucket: 'dyce-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnwUGJvgX8wk0kUbqkxiLx62nfMCi5k64',
    appId: '1:194041596044:ios:46c1aa7c47f12e7458d3a9',
    messagingSenderId: '194041596044',
    projectId: 'dyce-portfolio',
    storageBucket: 'dyce-portfolio.appspot.com',
    iosClientId: '194041596044-n6r13h1q0jolk28501t5d613nbgvtlf7.apps.googleusercontent.com',
    iosBundleId: 'com.example.dycePortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnwUGJvgX8wk0kUbqkxiLx62nfMCi5k64',
    appId: '1:194041596044:ios:46c1aa7c47f12e7458d3a9',
    messagingSenderId: '194041596044',
    projectId: 'dyce-portfolio',
    storageBucket: 'dyce-portfolio.appspot.com',
    iosClientId: '194041596044-n6r13h1q0jolk28501t5d613nbgvtlf7.apps.googleusercontent.com',
    iosBundleId: 'com.example.dycePortfolio',
  );
}
