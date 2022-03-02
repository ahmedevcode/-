import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
  static const String routename='aboutus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('App pray on mohamed.2022',style: TextStyle(color: Colors.green,fontSize: 25),)),
      ),
    );
  }
}
