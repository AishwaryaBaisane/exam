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
    apiKey: 'AIzaSyCKGPyJB8_zbs1yKNSyPLiCLTpU9R9rxng',
    appId: '1:248839136195:web:e76d92e16954dd18f09376',
    messagingSenderId: '248839136195',
    projectId: 'exam-113b9',
    authDomain: 'exam-113b9.firebaseapp.com',
    storageBucket: 'exam-113b9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHBAT8JvfZhoEIvTY3qk2Oy61uOD31-0w',
    appId: '1:248839136195:android:c9ae3d35ffa0c06ff09376',
    messagingSenderId: '248839136195',
    projectId: 'exam-113b9',
    storageBucket: 'exam-113b9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBr_ijrpmBoG3ANdaH1aklVmyolMHudgTM',
    appId: '1:248839136195:ios:1ae06058660a8484f09376',
    messagingSenderId: '248839136195',
    projectId: 'exam-113b9',
    storageBucket: 'exam-113b9.appspot.com',
    iosBundleId: 'com.example.exam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBr_ijrpmBoG3ANdaH1aklVmyolMHudgTM',
    appId: '1:248839136195:ios:1ae06058660a8484f09376',
    messagingSenderId: '248839136195',
    projectId: 'exam-113b9',
    storageBucket: 'exam-113b9.appspot.com',
    iosBundleId: 'com.example.exam',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCKGPyJB8_zbs1yKNSyPLiCLTpU9R9rxng',
    appId: '1:248839136195:web:8f00b821f1ad9443f09376',
    messagingSenderId: '248839136195',
    projectId: 'exam-113b9',
    authDomain: 'exam-113b9.firebaseapp.com',
    storageBucket: 'exam-113b9.appspot.com',
  );
}
