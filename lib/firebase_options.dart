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
    apiKey: 'AIzaSyCo_K2R97p_l9EMDW-lyaz-4PkgthTtUj8',
    appId: '1:176928104809:web:62983ee92e85888b0fddf8',
    messagingSenderId: '176928104809',
    projectId: 'it20026448',
    authDomain: 'it20026448.firebaseapp.com',
    storageBucket: 'it20026448.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkHQ_vS2BwkFEJW5O_GQlggqcMZJJBWRg',
    appId: '1:176928104809:android:ee7a9a292de4de5f0fddf8',
    messagingSenderId: '176928104809',
    projectId: 'it20026448',
    storageBucket: 'it20026448.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDe_8YmRGreAfN-kWyOvRzaQAQAHVKkfo8',
    appId: '1:176928104809:ios:4ffa690694681f970fddf8',
    messagingSenderId: '176928104809',
    projectId: 'it20026448',
    storageBucket: 'it20026448.appspot.com',
    iosClientId: '176928104809-vu12o2ug7a76r178g62hd1tj5r00mk57.apps.googleusercontent.com',
    iosBundleId: 'com.example.it20026448',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDe_8YmRGreAfN-kWyOvRzaQAQAHVKkfo8',
    appId: '1:176928104809:ios:4ffa690694681f970fddf8',
    messagingSenderId: '176928104809',
    projectId: 'it20026448',
    storageBucket: 'it20026448.appspot.com',
    iosClientId: '176928104809-vu12o2ug7a76r178g62hd1tj5r00mk57.apps.googleusercontent.com',
    iosBundleId: 'com.example.it20026448',
  );
}