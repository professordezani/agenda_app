import 'package:flutter/material.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = FirebaseOptions(
  apiKey: "AIzaSyAekZiFUgIGT3c_Q52PElUv6B2Gi2e_iMc",
  authDomain: "agenda-1aa94.firebaseapp.com",
  projectId: "agenda-1aa94",
  storageBucket: "agenda-1aa94.firebasestorage.app",
  messagingSenderId: "779886230095",
  appId: "1:779886230095:web:5468e51dd0b671110ac83a",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: firebaseConfig);
  runApp(const App());
}
