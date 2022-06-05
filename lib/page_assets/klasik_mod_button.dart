import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../game_pages/classic_game_page.dart';
import '../pages/player_list_page.dart';
import '../ui/helper/responsive.dart';
class KlasikModButton extends StatefulWidget {
  const KlasikModButton({Key? key}) : super(key: key);
  @override
  State<KlasikModButton> createState() => _KlasikModButtonState();
}
class _KlasikModButtonState extends State<KlasikModButton> {
  @override
  Widget build(BuildContext context) {
    return           InkWell(
      splashColor: Colors.red, // Splash color
      onTap: (){
        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerList())); İLK VERSİYON OLARAK KAPALI
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerList()));
         //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));

      },
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 150, sigmaY: 150),
          child: Container(
            height: SizeConfig.screenHeight * 0.26,
            width: SizeConfig.screenWidth * 0.6,
            alignment: Alignment.center,
            decoration: BoxDecoration(

              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: Column(children: [
                SizedBox(
                  height: 35,
                ),
                Image.asset(
                  "assets/images/klasikicon.png",
                  height: 130,
                  width: 130,
                ),
                Text(
                  "Klasik Mod",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 35, color: Colors.white),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
