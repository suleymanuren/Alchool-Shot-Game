import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slider_button/slider_button.dart';

import '../game_pages/classic_game_page.dart';
import '../pages/player_list_page.dart';
import '../splash_screen/splash_screen.dart';
import '../ui/helper/responsive.dart';

bool _isVisible = true;

class PlayerAdd extends StatefulWidget {
  const PlayerAdd({
    Key? key,
  }) : super(key: key);

  @override
  State<PlayerAdd> createState() => _PlayerAddState();
}

class _PlayerAddState extends State<PlayerAdd> {
  late TextEditingController _FirstPlayer;
  late TextEditingController _SecondPlayer;
  late TextEditingController _ThirdPlayer;
  late TextEditingController _FourthPlayer;
  final ValueNotifier<String> _counter = ValueNotifier<String>("0");

  @override
  void initState() {
    super.initState();
    _FirstPlayer = TextEditingController();
    _SecondPlayer = TextEditingController();

    _ThirdPlayer = TextEditingController();

    _FourthPlayer = TextEditingController();
  }

  @override
  void dispose() {
    _FirstPlayer.dispose();
    _SecondPlayer.dispose();

    _ThirdPlayer.dispose();

    _FourthPlayer.dispose();

    super.dispose();
  }

  void showToast() {
    setState(() {
      _isVisible = _isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * .05),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              controller: _FirstPlayer,
              decoration: InputDecoration(
                hintText: 'Oyuncu İsmi Giriniz',
                hintStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * .05),
            SingleChildScrollView(
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                controller: _SecondPlayer,
                decoration: InputDecoration(
                  hintText: 'Oyuncu İsmi Giriniz',
                  hintStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 5),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * .05),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              controller: _ThirdPlayer,
              decoration: InputDecoration(
                hintText: 'Oyuncu İsmi Giriniz',
                hintStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * .05),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              controller: _FourthPlayer,
              decoration: InputDecoration(
                hintText: 'Oyuncu İsmi Giriniz',
                hintStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 5),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * .05),
            Column(children: [
              Center(
                child: SliderButton(
                    action: () {
                      if (_FirstPlayer.text == '' ||
                          _SecondPlayer.text == '' ||
                          _ThirdPlayer.text == '' ||
                          _FourthPlayer.text == '') {
                        return showDialog<String>(
                            barrierDismissible: false,
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Ayık değilsiniz sanırım'),
                                  titleTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                  content: const Text(
                                      'Oyuncu ismi girmeyi unuttunuz. \nNot: 4 Adet oyuncu ismi girmeniz gerekli.'),
                                  contentTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PlayerList()));
                                        });
                                      },
                                      child: const Text('İyiyiz'),
                                    ),
                                  ],
                                ));

                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ClassicGamePage(
                                  result: _FirstPlayer.text,
                                  result2: _SecondPlayer.text,
                                  result3: _ThirdPlayer.text,
                                  result4: _FourthPlayer.text,
                                )));
                      }

                      //Navigator.pushNamed(context, ClassicGamePage.routeName, arguments: {_FirstPlayer.value,_SecondPlayer.value,_SecondPlayer.value,_FourthPlayer.value} );
                    },
                    label: Text(
                      "Oyunu Başlat               ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    icon: Icon(
                      Icons.forward,
                      size: SizeConfig.screenHeight * .04,
                      color: Colors.black,
                    )),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
