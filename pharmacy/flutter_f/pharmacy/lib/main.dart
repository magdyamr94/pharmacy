import 'package:flutter/material.dart';
import 'package:pharmacy/pages/ApiPage.dart';
import 'package:pharmacy/pages/HiScreen.dart';
import 'package:pharmacy/pages/HomePage.dart';
import 'package:pharmacy/pages/ItemPage.dart';
import 'package:pharmacy/pages/LogPage.dart';



void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => HiScreen(),
        "HomePage":(context) => HomePage(),
        "ItemPage":(context) => ItemPage(),
        "ApiPage":(context) => ApiPage(),
        "LogPage":(context) => LogPage(),
      },
    );
  }
}
