import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slider_button/slider_button.dart';

import '../page_assets/player_list_add.dart';
import '../splash_screen/splash_screen.dart';
import '../ui/helper/responsive.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/arkplan2.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(children: [
          SizedBox(height: SizeConfig.screenHeight*.07),

        Container(
            height: SizeConfig.screenHeight*.12,
            child: Text(
              "Var mısınız?",
              style: GoogleFonts.robotoSlab(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 50),
            )),
        Container(
          height: SizeConfig.screenHeight*.7495,
          width: SizeConfig.screenWidth*.8,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8),borderRadius: BorderRadius.circular(30.0)),
          child: Column(children: [
          SizedBox(height: SizeConfig.screenHeight*.06),
            Text("İSİMLER",style: GoogleFonts.roboto(fontSize: 40,color: Colors.white,decoration: TextDecoration.none,letterSpacing: 2,),),

            Container(height:SizeConfig.screenHeight*.570,child: PlayerAdd()),


          ]),

        ),


      ]
      ),
    );
  }
  
}
