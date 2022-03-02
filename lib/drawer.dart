import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/aboutus.dart';
import 'package:untitled1/rating.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        child: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it
      ListTile(
        onTap: () {
          Navigator.pushNamed(context,rating.routename);

        },
        leading: Icon(
          Icons.star_rate,
          color: Colors.black,
        ),
        title: Text("Rating App"),
      ),

      ListTile(
        onTap: () {
          reachUs();
        },
        leading: Icon(
          Icons.call,
          color: Colors.black,
        ),
        title: Text("contact us"),
      ),


      ListTile(
        onTap: () {
          Navigator.pushNamed(context,aboutus.routename);
        },
        leading: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(" about APP"),
      ),

      ListTile(
        onTap: () {
          if(Platform.isAndroid){
            SystemNavigator.pop();

          }else{
            exit(0);
          }
        },
        leading: Icon(
          Icons.exit_to_app,
          color: Colors.black,
        ),
        title: Text("Exit"),
      ),
    ]);
  }
  reachUs() async{

    var contact = "+201143412904";

    var android_url = "whatsapp://send?phone="
        + contact +"&text= Hi, I need some help";

    var iOS_url = "https://wa.me/$contact?text=${Uri.parse("Hi, I need some help")}";

    if(Platform.isIOS){

      if(await canLaunch(iOS_url)){
        await launch(iOS_url, forceSafariVC: false);
      }else{
        print('Whatsapp is not installed');
      }
    }else{
      if(await canLaunch(android_url)){
        await launch(android_url);
      }else{
        print('Whatsapp is not installed');
      }
    }

  }

}
