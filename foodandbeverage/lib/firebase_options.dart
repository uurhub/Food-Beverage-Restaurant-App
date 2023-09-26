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
    apiKey: 'AIzaSyBnQI_YnGJON57-YQbNvvOjEODS4BoKpAs',
    appId: '1:32825746359:web:8dc1515c158a6c6c827e32',
    messagingSenderId: '32825746359',
    projectId: 'food-beverage-app',
    authDomain: 'food-beverage-app.firebaseapp.com',
    storageBucket: 'food-beverage-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHxB4pUGs914_TpOhA9JZIzn6I1r5W16s',
    appId: '1:32825746359:android:ed4acbb30e6f60d3827e32',
    messagingSenderId: '32825746359',
    projectId: 'food-beverage-app',
    storageBucket: 'food-beverage-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg48HHWeuZaXcaVcv0fqbvxA1LhHVA8PE',
    appId: '1:32825746359:ios:33601d5a5a813b21827e32',
    messagingSenderId: '32825746359',
    projectId: 'food-beverage-app',
    storageBucket: 'food-beverage-app.appspot.com',
    iosBundleId: 'com.example.foodandbeverage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDg48HHWeuZaXcaVcv0fqbvxA1LhHVA8PE',
    appId: '1:32825746359:ios:ad27a053a11a59ff827e32',
    messagingSenderId: '32825746359',
    projectId: 'food-beverage-app',
    storageBucket: 'food-beverage-app.appspot.com',
    iosBundleId: 'com.example.foodandbeverage.RunnerTests',
  );
}
