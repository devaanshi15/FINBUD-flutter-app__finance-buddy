import 'package: flutter/material.dart';

import 'time_line_month.dart';

class TransactionScreen extends StatelessWidget {
const TransactionScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Expansive"),
), // AppBar
body: Column(
children: [
  TimeLineMonth(
    onChanged:(String? Value) {},
  ),
  CategoryList(
    onchanged:(String? value){},
  )


]
), // Column
); // Scaffold
}
}