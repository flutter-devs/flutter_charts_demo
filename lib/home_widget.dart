import 'package:flutter/material.dart';
import 'package:flutter_charts_deep/charts_screen/line_chart.dart';
import 'package:flutter_charts_deep/charts_screen/bar_chart.dart';
import 'package:flutter_charts_deep/charts_screen/pie_chart.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {


//    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double statusBarHeight = 24.00;

    List<Widget> _children = [
      getLineChart(statusBarHeight),
      getBarChart(statusBarHeight),
      getPieChart(statusBarHeight)
    ];

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Dev Chart Demo",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
//        appBar: new AppBar(title: new Text("Chart Demo with Timer")),
        body: _children[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
            onTap: _onTapTab,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: new Image.asset(
                  "assets/images/line.png",
                  height: 32.0,
                  width: 32.0,
                ),
                label: "Line Chart",
              ),
              BottomNavigationBarItem(
                  icon: new Image.asset(
                    "assets/images/bar.png",
                    height: 32.0,
                    width: 32.0,
                  ),
                  label: "Bar Chart"),
              BottomNavigationBarItem(
                  icon: new Image.asset(
                    "assets/images/pie.png",
                    height: 32.0,
                    width: 32.0,
                  ),
                  label: "Pie Chart"),
            ]),
      ),
    );
  }

  void _onTapTab(int value) {
    setState(() {
      print(value);
      _currentIndex = value;
    });
  }
}
