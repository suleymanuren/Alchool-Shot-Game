import 'package:flutter/material.dart';

import '../ui/helper/responsive.dart';
import 'mainpage_scoreboard_button.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: <Widget>[
          
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/shotel.png",
                    width: SizeConfig.screenWidth * .3,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * .03,
                  ),
                  Text(
                    "Shot Oyunu",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ],
              ),
            ),
  
          
          SizedBox(height: SizeConfig.screenHeight*.05),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Anasayfa',
                style: TextStyle(
                  color: Colors.white,
                )),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              //application android:icon="@mipmap/ic_launcher"Navigator.pushNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
