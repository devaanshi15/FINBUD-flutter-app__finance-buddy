
import 'package:finbud_app/utils/icons_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  TransactionCard({super.key});

  var appIcons = AppIcons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Recent Transactions",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
          buildClickableRow(context, "Add Expense", 'add_expense'),
          buildClickableRow(context, "Add Goal", 'add_goal'),
          buildClickableRow(context, "View Budget", 'view_budget'),
          buildClickableRow(context, "Add to Wallet", 'add_to_wallet'),
          buildClickableRow(context, "Ask Buddy", 'ask_buddy'),
        ],
      ),
    );
  }

  Widget buildClickableRow(BuildContext context, String title, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          // Navigate to the specified route when the row is tapped
          Navigator.pushNamed(context, route);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                color: Colors.grey.withOpacity(0.09),
                blurRadius: 10.0,
                spreadRadius: 4.0,
              )
            ],
          ),
          child: ListTile(
            minVerticalPadding: 10,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            leading: Container(
              width: 70,
              height: 100,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.withOpacity(0.2),
                ),
                child: Center(child: FaIcon(appIcons.getExpenseCategoryICons('home'))),
              ),
            ),
            title: Row(
              children: [
                Expanded(child: Text(title)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
