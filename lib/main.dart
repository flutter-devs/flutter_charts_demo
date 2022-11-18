import 'package:flutter/material.dart';
import 'package:flutter_charts_deep/home_widget.dart';
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
      primaryColor: Colors.black,
      primaryColorDark: Colors.black, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black)

    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME: (BuildContext context) => new Home(),
      // ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
    },
  ));
}