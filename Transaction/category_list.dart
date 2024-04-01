import 'dart:async';

import 'package:flutter/material.dart' ;

class CategoryList extends StatefullWidget {
const CategoryList({super.key, required this.onChanged});
final ValueChanged<String?> OnChanged;

@override
State<CategoryList> createState() => _CategoryListState();
} 
class _CategoryListState extends State<CategoryList>{
  String currentCategory  = "";

final scrollController= ScrollController();
var appIcon= AppIcons();


@override
void initState() {
super. initState();

}
// scrollToSelectedMonth(){
// final selectedMonthIndex = months.indexOf(currentMonth);
// if (selectedMonthIndex != -1) {
// final scrollOffset = (selectedMonthIndex * 100.0) - 170;
// scrollController.animateTo(scrollOffset,
// duration:Duration(milliseconds:500), curve:Curve.ease);
// }
//}
@override
Widget build(BuildContext context) {
return Container(
height:45,
child: ListView.builder(
  controller:scrollController,
itemCount:appIcon.homeExpensesCategories.length,
scrollDirection: Axis.horizontal,
itemBuilder: (context, index) {
  var data=appIcon.homeExpensesCategories[index];
  return GestureDetector(
onTap: () {
setState((){
currentCategory = data['name'];
widget.OnChanged(months['name']);
});
scrollToSelectedMonth();
},
child: Container(

margin:EdgeInsets.all(6),
padding: EdgeInsets.only(left:10, right:10),

decoration: BoxDecoration(
color: currentCategory == data['name']

?Colors.blue.shade900
:Colors.purple.withOpacity(0.1),
borderRadius: BorderRadius.circular(20)),
child: Center(
child: Row(
  children:[
    Text(
data['name'],
style: TextStyle(
color: currentCategory == data['name']
?Colors.white
:Colors.purple,
), // TextStyle
)), // Text // Center
), // Container


(color: Colors.red.withOpacity(0.1),
 borderRadius:BorderRadius.circular(20)),
child:Center(child: Text("Oct 2021")),
); // Container
}), // ListView.builder
); // Container
}
}

