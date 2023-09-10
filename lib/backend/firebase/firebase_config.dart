import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA5HtQd4s54bjNMp8WxGhIW8YUU6S87v3k",
            authDomain: "consolid-f3645.firebaseapp.com",
            projectId: "consolid-f3645",
            storageBucket: "consolid-f3645.appspot.com",
            messagingSenderId: "601308771309",
            appId: "1:601308771309:web:03783a7062ccce682aede4",
            measurementId: "G-2E070JY2J3"));
  } else {
    await Firebase.initializeApp();
  }
}
