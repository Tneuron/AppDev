import 'package:flutter/material.dart';
import 'package:lunch_tray/vegetablesList.dart';
import 'package:lunch_tray/FruitsList.dart';
import 'package:lunch_tray/StartPage.dart';
import 'package:lunch_tray/BillPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  static const String title ='Lunch_Tray';
  @override

  Widget build (BuildContext context)=>const MaterialApp(
    title: MyApp.title,
    home: StartPage(),
  );
}
