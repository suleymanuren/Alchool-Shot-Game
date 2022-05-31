import 'package:flutter/material.dart';
import 'package:shotoyunuv1/game_pages/classic_game_page.dart';
import 'package:shotoyunuv1/splash_screen/splash_screen.dart';

import '../../game_pages/classic_game_page.dart';


final Map<String, WidgetBuilder> routes = {
  ClassicGamePage.routeName: (context) => ClassicGamePage(result: '', result2: '', result3: '', result4: '',),
  SplashScreen.routeName: (context) => SplashScreen(),

 


};
