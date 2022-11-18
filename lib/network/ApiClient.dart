import 'package:flutter_charts_deep/model/ForecastData.dart';
import 'package:flutter_charts_deep/model/WeatherData.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

class ApiClient {
  static ApiClient _instance;

  static ApiClient getInstance() {
    if (_instance == null) {
      _instance = new ApiClient();
    }
    return _instance;
  }

  Future<WeatherData> getWeather() async {
    http.Response response = await http.get(
        Uri.parse(
          Uri.encodeFull(Endpoints.WEATHER),
        ),
        headers: {"Accept": "application/json"});

    return WeatherData.deserialize(response.body);
  }

  Future<ForecastData> getForecast() async {
    http.Response response = await http.get(
        Uri.parse(
          Uri.encodeFull(Endpoints.FORECAST),
        ),
        headers: {"Accept": "application/json"});

    return ForecastData.deserialize(response.body);
  }
}

class Endpoints {
  static const _ENDPOINT = "http://api.openweathermap.org/data/2.5";
  static const WEATHER = _ENDPOINT +
      "/weather?lat=43.509645&lon=16.445783&APPID=86332c13b42bab21bee1a8eff79280d3&units=metric";
  static const FORECAST = _ENDPOINT +
      "/forecast?lat=43.509645&lon=16.445783&APPID=86332c13b42bab21bee1a8eff79280d3&units=metric";
}
//api key : 86332c13b42bab21bee1a8eff79280d3 Deep
