import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/cograst.dart';

import 'drawer.dart';

class home extends StatefulWidget {
  static const String routename='home';

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  int button=0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
      ),
      drawer: Drawer(
        child: MainDrawer(),


      ),
      body:
          Column(
            children: [
              Image.asset('assets/pray1.jpg'),
              SafeArea(
                child: FlatButton(onPressed: (){
                  setState(() {
                    button++;
                    if(button==10)
                      (
                          Navigator.pushNamed(
                              context,congrast.routename));
                  }
                  );
                  final player=AudioCache();
                  player.play('mo.mp3');
                }, child: Column(
                  children: [
                    Text('$button'),
                  ],


                )

                ),
              ),

            ],

          ),

    );
  }
}
