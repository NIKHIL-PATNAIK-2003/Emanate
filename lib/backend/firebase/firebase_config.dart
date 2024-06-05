import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBANC0LKoD7cnA1_KH9KGLNJZgpbwPr4xM",
            authDomain: "emanate01-958f1.firebaseapp.com",
            projectId: "emanate01-958f1",
            storageBucket: "emanate01-958f1.appspot.com",
            messagingSenderId: "114715905009",
            appId: "1:114715905009:web:8a9a7e903e25aaa1021250"));
  } else {
    await Firebase.initializeApp();
  }
}
