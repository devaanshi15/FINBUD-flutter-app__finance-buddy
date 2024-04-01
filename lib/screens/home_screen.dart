// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:finbud_app/screens/login_screen.dart';
import 'package:finbud_app/widgets/add_transaction_form.dart';
import 'package:finbud_app/widgets/hero_card.dart';
import 'package:finbud_app/widgets/transaction_cards.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isLogoutLoading = false;

  logOut() async {
    setState(() {
      isLogoutLoading = true;
    });

    await FirebaseAuth.instance.signOut();

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginView()),
    );

    setState(() {
      isLogoutLoading = false;
    });
  }

  _dialogBuilder(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: AddTransactionForm(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: () {
          _dialogBuilder(context);
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        // title: Text(
        //   "hey",
        //   style: TextStyle(color: Colors.white),
        // ),

        title: Text(
                  "FINBUD",
                  style: TextStyle(
                      fontSize: 44,
                      color: Colors.white,
                      height: 1.2,
                      fontWeight: FontWeight.w600),
                ),
        actions: [
          IconButton(
            onPressed: () {
              logOut();
            },
            icon: isLogoutLoading
                ? CircularProgressIndicator()
                : Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroCard(),
            TransactionCard(),
          ],
        ),
      ),
    );
  }
}
