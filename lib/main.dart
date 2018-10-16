import 'package:flutter/material.dart';
import 'package:flutter_charts_deep/home_widget.dart';
import 'colored_container.dart';
import 'package:flutter_charts_deep/Constant/Constant.dart';
import 'package:flutter_charts_deep/Screens/SplashScreen.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Home();
     
//   }
// }
main() {

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      accentColor: Colors.black,
      primaryColor: Colors.black,
      primaryColorDark: Colors.black

    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME: (BuildContext context) => new Home(),
      // ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
    },
  ));
}