// ignore_for_file: prefer_const_constructors, unused_import, deprecated_member_use

import 'package:finbud_app/view/login/sign_up.dart';
import 'package:finbud_app/view/login/welcome_view.dart';
import 'package:finbud_app/widgets/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Tracker',
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!);
      },
      
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
    );
  }
}
