import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/main_page.dart';
import '../ui/helper/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    saveSharedLoggingControl();
  }

  Future saveSharedLoggingControl() async {
    Future.delayed(Duration(seconds: 3), () {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  Widget build(BuildContext context) {
    MaterialApp(
  routes: {
    SplashScreen.routeName: (context) =>
        const SplashScreen(),
  },);
    SizeConfig().init(context);
    return 
    Scaffold(
            

   
   backgroundColor: Colors.white.withOpacity(.97),
      body: Align(
        child: Column(

          children: [

            Expanded(

              flex: 4,

              child: SizedBox(
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .5,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 100.0,left: 0),
                      child: Container(
                        height: SizeConfig.screenHeight*1,
                        width: SizeConfig.screenWidth*1,

                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/shotel.png",),),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth*.9,
                height: SizeConfig.screenHeight * .3,
                child: Image.asset("assets/images/splashtext.png"),

                ),
              ),

            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: SizeConfig.screenWidth,
                height: SizeConfig.screenHeight * .3,
                child: Text(
                  "Version: 1.0 ",
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: "primaryFont",
                    fontSize: SizeConfig.screenWidth * .04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
