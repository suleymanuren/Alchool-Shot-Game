import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shotoyunuv1/page_assets/klasik_mod_button.dart';
import 'package:shotoyunuv1/pages/player_list_page.dart';
import 'package:shotoyunuv1/splash_screen/splash_screen.dart';

import '../game_pages/classic_game_page.dart';
import '../page_assets/mainpage_scoreboard_button.dart';
import '../page_assets/rekabet_mod_button.dart';
import '../ui/helper/responsive.dart';
import '../page_assets/mainpage_drawer.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        /*actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                //child: ScoreBoard(),
              )),
        ],*/
      ),
      extendBodyBehindAppBar: true, //APPBAR TRANSPARENT OLMASINA YARIYOR
      drawer: MyDrawer(),
      backgroundColor: Colors.black,
      body: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          image: DecorationImage(
              image: AssetImage("assets/images/arkplan2.png"),
              fit: BoxFit.fill),
        ),
        child: Column(children: [
          SizedBox(height: 210,),
          KlasikModButton(),
          SizedBox(height: 50),
          RekabetModButton(),
        ]),
      ),
    );
  }
}
