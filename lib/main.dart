import 'package:flutter/material.dart';
import 'package:shotoyunuv1/ui/helper/routes.dart';


import 'splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}
