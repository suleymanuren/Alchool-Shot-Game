import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../game_pages/classic_game_page.dart';
import '../ui/helper/responsive.dart';

class RekabetModButton extends StatefulWidget {
  const RekabetModButton({Key? key}) : super(key: key);
  @override
  State<RekabetModButton> createState() => _RekabetModButtonState();
}

class _RekabetModButtonState extends State<RekabetModButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(45)),
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => SplashScreen()));
        }, // Handle your onTap here.
        child: Container(
          height: SizeConfig.screenHeight * 0.26,
          width: SizeConfig.screenWidth * 0.6,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(45)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 130, sigmaY: 130),
              child: Container(
                height: 20,
                width: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Stack(
                  children: [
                    Align(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset("assets/images/rekabeticon.png",
                              height: 130, width: 130),
                          Text(
                            "Rekabet Modu",
                            style: GoogleFonts.playfairDisplay(
                                fontSize: 35, color: Colors.white),
                          ),
                          /*BackdropFilter(
                            filter: ImageFilter.blur(sigmaY: 8, sigmaX: 8),
                            child: Container(
                            )
                        ),*/
                        ],
                      ),
                    ),
                    BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 8, sigmaX: 8),
                        child: Container(
                          child: Align(
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/soruisareti.png",
                                  color: Colors.red.withOpacity(0.8),
                                  fit: BoxFit.fill,
                                  height: SizeConfig.screenHeight*.2,
         ),
                                Text(
                                  "YAKINDA!",
                                  style: GoogleFonts.playfairDisplay(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
