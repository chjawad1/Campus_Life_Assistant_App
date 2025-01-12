import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCWOoI4qFPW8ncnQCSGnVDam-WmsC8vIPw",
            authDomain: "campus-life-hnyeyn.firebaseapp.com",
            projectId: "campus-life-hnyeyn",
            storageBucket: "campus-life-hnyeyn.firebasestorage.app",
            messagingSenderId: "1034519621020",
            appId: "1:1034519621020:web:faaa457aa31e431faa6c59"));
  } else {
    await Firebase.initializeApp();
  }
}
