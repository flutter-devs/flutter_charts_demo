import 'package:flutter/material.dart';
import 'package:flutter_charts_deep/res/Res.dart';

Widget WeatherDetailsHeader(double statusBarHeight) {
  String _currentDate = "September 14, 3:33 PM";

  String _condition = "Clear Sky";

  String _roundedTemperature = "33°C";

  String _city = "NOIDA";

  return new Container(
    color: Colors.blue,
    child: new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                _currentDate,
                style: new TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: $Colors.textColorWheatherHeader),
              ),
            ],
          ),
          new Center(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Text(
                      _city,
                      style: new TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.w700,
                          color: $Colors.textColorWheatherHeader),
                    ),
                    new Text(
                      _condition,
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: $Colors.textColorWheatherHeader,
                      ),
                    ),
                    new Text(_roundedTemperature,
                        style: new TextStyle(
                            fontSize: 45.0,
                            color: $Colors.textColorWheatherHeader,
                            fontFamily: "Roboto")),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    new Image.asset('assets/images/sunny.png', width: 100.0, height: 100.0,)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
    padding: new EdgeInsets.only(top: statusBarHeight),
  );
}

/*
          */