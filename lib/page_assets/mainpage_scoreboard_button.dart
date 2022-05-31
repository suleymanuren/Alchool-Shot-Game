import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/helper/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({Key? key}) : super(key: key);

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 145.0),
          child: Container(
            width: 140,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: Align(
              child: Text("SCOREBOARD",

                  style: TextStyle(color: Colors.black,),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ),
    );
  }
}
