import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
class First extends StatefulWidget{
 const First({Key ? key}) : super(key : key);
 @override
 State<First> createState() => _FirstState();
}
 class _FirstState extends State<First> {
 final dateController = TextEditingController();
 String age = '0';
 @override
 void dispose() {
 // Clean up the controller when the widget is removed
 dateController.dispose();
 super.dispose();
 }
 String calculateAge(DateTime birthDate) {
 DateTime currentDate = DateTime.now();
 int age = currentDate.year - birthDate.year;
int month1 = currentDate.month;
 int month2 = birthDate.month;
 if (month2 > month1) {
 age--;
 } else if (month1 == month2) {
 int day1 = currentDate.day;
 int day2 = birthDate.day;
 if (day2 > day1) {
 age--;
 }
 }
 return age.toString();
 }
 @override
 Widget build(BuildContext context){
 return Scaffold(
 backgroundColor: Colors.blue[50],
 body: Center(
 child: Padding(
 padding: EdgeInsets.all(50.0),
 child: Column(
 children: [
 Text(
 "\nLets start with your age",
 style: TextStyle(
 fontWeight: FontWeight.w700,
 fontSize: 25,
 color: Colors.blueAccent,
 ),
 ),
 SizedBox(height: 50),
 Container(
 height: 250,
 width: 250,
 child:Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children:[
 Text("YOUR AGE", style: TextStyle(
 fontWeight: FontWeight.w700,
 fontSize: 20,
 color: Colors.blueAccent),),
 SizedBox(height: 20),
 TextField(
 readOnly: true,
 controller: dateController,
 decoration: const InputDecoration(hintText: 'Pick your Date'),
 onTap: () async {
 var date = await showDatePicker(
 context: context,
initialDate: DateTime.now(),
 firstDate: DateTime(1900),
 lastDate: DateTime(2100));
 if (date != null) {
 setState(() {
 age = calculateAge(date);
 });
dateController.text = DateFormat('MM/dd/yyyy').format(date);
 }
 },
 ),
 SizedBox(height : 30),
 Text(' $age ', style:TextStyle(fontWeight: FontWeight.w700,
 fontSize: 60,
color: Colors.blueAccent)),
 SizedBox(height : 30),
 Text("YRS", style: TextStyle(
 fontWeight: FontWeight.w700,
 fontSize: 20,
color: Colors.blueAccent),),
 ],),
 decoration: BoxDecoration(
 borderRadius: BorderRadius.all(Radius.circular(10)),
 shape: BoxShape.rectangle,
 color: Colors.blue[50],
 ),),
 SizedBox(height: 80),
 ],),
 ),
 ),
 );
 }
}