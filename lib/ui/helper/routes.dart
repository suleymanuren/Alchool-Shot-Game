import 'package:flutter/material.dart';


import '../../game_pages/classic_game_page.dart';
import '../../splash_screen/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  ClassicGamePage.routeName: (context) => ClassicGamePage(result: '', result2: '', result3: '', result4: '',),
  SplashScreen.routeName: (context) => SplashScreen(),

 


};
