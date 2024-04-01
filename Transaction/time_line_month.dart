import 'package:flutter/material.dart' ;

class TimeLineMonth extends StatefullWidget {
const TimeLineMonth({super.key, required this.onChanged});
final ValueChanged<String?> OnChanged;

@override
State<TimeLineMonth> createState() => _TimeLineMonthState();
}
class _TimelineMonthState extends State<TimeLineMonth>{
  String currentMonth = "";
List<String> months = [];
@override
void initState() {
super. initState();
DateTime now = DateTime.now();
for (int i = -18; i <= 0; i++) {
months.add(
DateFormat('MMM y').format(DateTime(now.year, now.month +i, 1)));
}
currentMonth = DateFormat('MMM y' ). format(now) ;
Future.delayed(Duration(seconds: 1), () {
scrollToSelectedMonth();
});
}
scrollToSelectedMonth(){
final selectedMonthIndex = months.indexOf(currentMonth);
if (selectedMonthIndex != -1) {
final scrollOffset = (selectedMonthIndex * 100.0) - 170;
scrollController.animateTo(scrollOffset,
duration:Duration(milliseconds:500), curve:Curve.ease);
}
}
@override
Widget build(BuildContext context) {
return Container(
height:40;
child: ListView.builder(
itemCount: 12,
scrollDirection: Axis.horizontal,
itemBuilder: (context, index) {
  return GestureDetector(
onTap: () {
setState((){
currentMonth = months[index];
widget.OnChanged(months[index]);
});
scrollToSelectedMonth();
},
child: Container(

width: 80,
margin: EdgeInsets.all(8),
decoration: BoxDecoration(
color: currentMonth == months [index]

?Colors.blue.shade900
:Colors.purple.withOpacity(0.1),
borderRadius: BorderRadius.circular(20)),
child: Center(
child: Text(
months [index],
style: TextStyle(
color: currentMonth == months[index]
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

