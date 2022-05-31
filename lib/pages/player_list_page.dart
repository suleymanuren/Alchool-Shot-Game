import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shotoyunuv1/game_pages/classic_game_page.dart';
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
        SizedBox(
          height: 100,
        ),
        Container(
            height: 100,
            child: Text(
              "Var mısınız?",
              style: GoogleFonts.robotoSlab(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 50),
            )),
        Container(
          height: SizeConfig.screenHeight*.7,
          width: SizeConfig.screenWidth*.8,
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.8),borderRadius: BorderRadius.circular(30.0)),
          child: Column(children: [
            SizedBox(height: 30,),
            Text("İsimler",style: GoogleFonts.roboto(fontSize: 35,color: Colors.white,decoration: TextDecoration.none,),),
                        SizedBox(height: 30,),

            Container(height:525,child: PlayerAdd()),


          ]),

        ),

        SizedBox(height: 25,),
        /*Center(
          child: SliderButton(action: () {
            ///Do something here
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen(),));
             Navigator.pushNamed(context, ClassicGamePage.routeName,  );

          },

            label: Text(
              "Oyunu Başlat               ",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17,decoration: TextDecoration.none,),
            textAlign: TextAlign.center,),
            icon: Icon(Icons.forward,size: SizeConfig.screenHeight*.04,color: Colors.black,
                )

          ),
        )*/
      ]
      ),
    );
  }
  
}
