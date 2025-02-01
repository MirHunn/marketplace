import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBKfVVWUyewTcheDrSl7zj6jCyXbId554w",
            authDomain: "mirhunn-g6mdhy.firebaseapp.com",
            projectId: "mirhunn-g6mdhy",
            storageBucket: "mirhunn-g6mdhy.firebasestorage.app",
            messagingSenderId: "198829968203",
            appId: "1:198829968203:web:584f2db84480f3e093f6ce"));
  } else {
    await Firebase.initializeApp();
  }
}
