import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shotoyunuv1/ui/helper/responsive.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

String soruData = "Sorular için kaydırmaya başlayın";

class SwiperCard extends StatefulWidget {
  SwiperCard({
    Key? key,
  }) : super(key: key);

  @override
  _SwiperCardState createState() => _SwiperCardState();
}

class Content {
  final String text;
  final Color color;

  Content({required this.text, required this.color});
}

class _SwiperCardState extends State<SwiperCard> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();




  String? itemCount;
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
    setState(() {});
    throw Exception();
  }

  void initState() {
    for (int i = 0; i < 100000; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: soruData, color: Colors.transparent),
          likeAction: () {
            setState(() {});
          },
          nopeAction: () {
            setState(() {});
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    main();
    return Scaffold(
        backgroundColor: Colors.transparent,
        key: _scaffoldKey,
        body: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight*.35,),
            Row(
              children: [
                SizedBox(width: SizeConfig.screenWidth*.075,),
                Container(
                    width: SizeConfig.screenHeight * .4,
                    height: SizeConfig.screenHeight * .5,
                    child: Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height - kToolbarHeight,
                        child: SwipeCards(
                          matchEngine: _matchEngine!,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(children: [
                              Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    "assets/images/oyunkartı.png",
                                  )),
                                  Positioned(
top: SizeConfig.screenHeight*.15,
                          left: SizeConfig.screenWidth*.2,                              child:Align(//alignment: Alignment.center,
                            child: Container(                      
                              width: SizeConfig.screenWidth*.5,
                          
                              child: Text(
                                    soruData,
                                    style: GoogleFonts.play(
                                        fontSize: 20,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 20,
                                  ),
                            ),
                          ) )
                              
                            ]);
                          },
                          onStackFinished: () {
                            _scaffoldKey.currentState!.showSnackBar(SnackBar(
                              content: Text("Stack Finished"),
                              duration: Duration(milliseconds: 500),
                            ));
                          },
                          itemChanged: (SwipeItem item, int index) {
                            print("item: ${item.content.text}, index: $index");
                          },
                          upSwipeAllowed: false,
                          fillSpace: true,
                        ),
                      ),
                    ])),
              ],
            ),
          ],
        ));
  }
}
