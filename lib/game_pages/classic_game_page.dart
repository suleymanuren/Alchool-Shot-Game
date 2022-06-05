import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert' as convert;
import '../page_assets/player_list_add.dart';
import '../page_assets/player_list_add.dart';
import '../page_assets/swipe_card.dart';
import '../ui/helper/responsive.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'package:sizer/sizer.dart';

String soruData = "Sorular için kaydırmaya başlayın";
class ClassicGamePage extends StatefulWidget {
  static String routeName = '/ClassicGamePage';
  final String result;
    final String result2;

  final String result3;

  final String result4;


  const ClassicGamePage({Key? key, required this.result,required this.result2,required this.result3,required this.result4 }) : super(key: key);


  @override
  State<ClassicGamePage> createState() => _ClassicGamePageState();
}

class _ClassicGamePageState extends State<ClassicGamePage> {
  @override
  void main() async {
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    var url = Uri.https('www.softinyo.com', '/shot/index.php', {'q': '{http}'});
// Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['soru'];
      itemCount = itemCount.toString();
      print('$itemCount');
      await prefs.setString('soru', '$itemCount');
      soruData = itemCount;
      return itemCount;
    }
    throw Exception();
  }

  @override
  Widget build(BuildContext context) {
MaterialApp(
  // Start the app with the "homeScreen" named route.
  initialRoute: '/ClassicGamePage',
  
  routes: {  
    // When navigating to the "homeScreen" route, build the HomeScreen widget.
    '/ClassicGamePage': (context) => ClassicGamePage(result: '', result2: '', result3: '', result4: '',),

  },
);
    return Scaffold(
      body: Container(
        
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          image: DecorationImage(
              image: AssetImage("assets/images/arkplan2.png"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: SizeConfig.screenHeight*.1,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(        color: Colors.white,
              borderRadius: BorderRadius.only(
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(50),
              
                      ),
                      border: Border.all(
                      width: 3,
                      color: Colors.grey.shade100,
                      style: BorderStyle.solid,
                    ),
                      )
                      ,
                  child:Row(children: [
                    Flexible(child: SizedBox(width: SizeConfig.screenWidth*.025,)),
              Flexible(flex: 5,
                child:   new Center(
                  child: new Text("${widget.result}", 
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  textAlign: TextAlign.center,),
                ),
              ),
                Flexible(flex: 5,
                  child: new Center(
                    child: new Text("${widget.result2}",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlign: TextAlign.center,),
                  ),
                ),
                Flexible(flex: 4,
                  child: new Center(
                    child: new Text("${widget.result3}",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlign: TextAlign.center,),
                  ),
                ),
                Flexible(flex: 5,
                  child: new Center(
                    child: new Text("${widget.result4}",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    textAlign: TextAlign.center,),
                  ),
              
                ),
                                Flexible(child: SizedBox(width: SizeConfig.screenWidth*.025,)),
              
                  ],)
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight*.13,
              child: Image.asset(
                "assets/images/gamedesk2.png",
                width: SizeConfig.screenWidth,
              ),
            ),
            Positioned(child: SwiperCard())
         

          ],
        ),
      ),
    );
  }
}
