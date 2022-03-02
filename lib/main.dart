import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled1/aboutus.dart';
import 'package:untitled1/cograst.dart';
import 'package:untitled1/exit.dart';
import 'package:untitled1/home.dart';
import 'package:untitled1/rating.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatefulWidget {
  int addded=0;
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        congrast.routename:(context)=>congrast(),
        home.routename:(context)=>home(),
        rating.routename:(context)=>rating(),
        aboutus.routename:(context)=>aboutus(),
        Demo.routename:(context)=>Demo(),
      },
      initialRoute: home.routename,
      home: home(),
    );
  }

}


