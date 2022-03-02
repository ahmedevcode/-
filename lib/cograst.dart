import 'package:flutter/material.dart';
import 'package:untitled1/home.dart';
class congrast extends StatelessWidget {
  static const String routename='congrast';
  int added=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(30),
      color: Colors.white,
      child:Column(
        children: [
          Text('تهانينامبارك احسنت صنعنا',style: TextStyle(fontSize: 50),),
          ElevatedButton(
              onPressed: () {
                added==30;
                Navigator.pushNamed(context,home.routename);
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('استمر')),
                  ],
                ),
              )),

        ],
      ),
    );
  }
}
