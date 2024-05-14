import 'dart:convert';
import 'dart:js_interop';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speak_up/assessment/assessment.dart';
import 'package:speak_up/assessment/assessment2.dart';
import 'package:speak_up/assessment/assessment3.dart';
import 'package:speak_up/assessment/assessment4.dart';
import 'package:speak_up/crud/service.dart';
import 'package:speak_up/crud/users.dart';
import 'package:speak_up/dashboard.dart';
import 'package:speak_up/exercises.dart';
import 'package:speak_up/landingPage.dart';
import 'package:speak_up/learningpath.dart';
import 'package:speak_up/logIn.dart';
import 'package:speak_up/navbar.dart';
import 'package:speak_up/registration.dart';
import 'package:speak_up/settings/editprofile.dart';
import 'package:speak_up/settings/profile.dart';
import 'package:speak_up/settings/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA2F-ReEVVJm7-cVodtj5rFjDU4UlBMBt4",
          appId: "1:187408009452:web:ebe7afd4c597d1667dfdc9",
          messagingSenderId: "187408009452",
          projectId: "speakup-92d47"));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final userService _userservice = userService();

  List<String> docIDs = [];
  Future getDocID() async {
    await FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((snapshot) => snapshot.docs.forEach((document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    // Create a reference to the collection

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const landingPage(),
      routes: {
        '/exercises': (context) => const exercises(),
        '/learningpath': (context) => const learningpath(),
        '/editprofile': (context) => const editProfile(),
        '/profile': (context) => const profile(),
        '/settings': (context) => const setting(),
        '/login': (context) => const logIn(),
        '/registration2': (context) => const registerPersonalDetails(),
        '/registration': (context) => const registration(),
        '/dashboard': (context) => const dashboard(),
        '/assessment': (context) => const assessment(),
        '/assessment2': (context) => const assessment2(),
        '/assessment3': (context) => const assessment3(),
        '/assessment4': (context) => const assessment4(),
      },
    );
  }
}
