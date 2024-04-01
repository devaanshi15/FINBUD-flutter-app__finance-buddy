// ignore_for_file: prefer_const_constructors

import 'package:finbud_app/widgets/recent_expenses.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: (() {
          //_dialogBuilder(context);
        }),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      
      body: Column(
        children: [
          recentExpenses(),
        ],
      ),
    );
  }
}

