// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:finbud_app/utils/icons_list.dart';
import 'package:flutter/material.dart';

class CategoryDropDown extends StatelessWidget {
  CategoryDropDown({super.key, this.cattype, required this.onChanged});
  final String? cattype;
  final ValueChanged<String?> onChanged;
  var appIcons = AppIcons();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: cattype,
        isExpanded: true,
        hint: Text("Select category"),
        items: appIcons.homeExpensesCategories
            .map((e) => DropdownMenuItem<String>(
                value: e['name'], child: Row(
                  children: [
                    Icon(e['icon'], color: Colors.black54,),
                    SizedBox(width: 10,),
                    Text(e['name'], style: TextStyle(color: Colors.black45),),
                  ],
                )))
            .toList(),
        onChanged: onChanged);
  }
}
