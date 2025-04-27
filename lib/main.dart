// Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// Material UI
import 'package:flutter/material.dart';
import 'package:pokedex/firebase_options.dart';
// Paginas
import 'package:pokedex/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDK7Juh6Nsn34v9hElkh8mBTBn8qOOeHv4",
          authDomain: "pokedex-app-d10b5.firebaseapp.com",
          projectId: "pokedex-app-d10b5",
          storageBucket: "pokedex-app-d10b5.firebasestorage.app",
          messagingSenderId: "647165813618",
          appId: "1:647165813618:web:645442ab8ce407bf9df3eb"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
