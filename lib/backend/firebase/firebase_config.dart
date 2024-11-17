import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyClyb-B3-jbQp2a7pOuyO-D7riqewifQKg",
            authDomain: "clot-b5eb5.firebaseapp.com",
            projectId: "clot-b5eb5",
            storageBucket: "clot-b5eb5.appspot.com",
            messagingSenderId: "1052529344861",
            appId: "1:1052529344861:web:926631061c4785976ae8b4"));
  } else {
    await Firebase.initializeApp();
  }
}
