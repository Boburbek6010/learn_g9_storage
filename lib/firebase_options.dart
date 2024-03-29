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
    apiKey: 'AIzaSyA7Wf0irb47X3Jpr97j5OytAGJfWM6gNf4',
    appId: '1:417508042805:web:f5d5bdb89a227ef637297c',
    messagingSenderId: '417508042805',
    projectId: 'learn-storage-e12a8',
    authDomain: 'learn-storage-e12a8.firebaseapp.com',
    storageBucket: 'learn-storage-e12a8.appspot.com',
    measurementId: 'G-WQV097S5DJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtn9yXscPDIocchfuO5Ck0GNmsp2j_nEc',
    appId: '1:417508042805:android:76be171473c3af7537297c',
    messagingSenderId: '417508042805',
    projectId: 'learn-storage-e12a8',
    storageBucket: 'learn-storage-e12a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCTF0-9oAZxLqI-icwMaq4yHvdhgNdmOc8',
    appId: '1:417508042805:ios:d9929bc28c50d6e337297c',
    messagingSenderId: '417508042805',
    projectId: 'learn-storage-e12a8',
    storageBucket: 'learn-storage-e12a8.appspot.com',
    iosBundleId: 'com.pdp.learnG9Storage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCTF0-9oAZxLqI-icwMaq4yHvdhgNdmOc8',
    appId: '1:417508042805:ios:e2730dbaf71b7fd037297c',
    messagingSenderId: '417508042805',
    projectId: 'learn-storage-e12a8',
    storageBucket: 'learn-storage-e12a8.appspot.com',
    iosBundleId: 'com.pdp.learnG9Storage.RunnerTests',
  );
}
