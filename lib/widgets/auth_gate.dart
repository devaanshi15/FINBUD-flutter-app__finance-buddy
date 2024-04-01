// ignore_for_file: unused_import, prefer_const_constructors

import 'package:finbud_app/screens/dashboard.dart';
import 'package:finbud_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(!snapshot.hasData){
          return LoginView();
        }
        return Dashboard();
      });
  }
}