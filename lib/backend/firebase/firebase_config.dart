import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAbW_qNfwOw3MzADyHIlyLB9dz8wB5SklE",
            authDomain: "inkredible-39a11.firebaseapp.com",
            projectId: "inkredible-39a11",
            storageBucket: "inkredible-39a11.appspot.com",
            messagingSenderId: "557285692819",
            appId: "1:557285692819:web:ecd0d24ae962b2a850c466"));
  } else {
    await Firebase.initializeApp();
  }
}
