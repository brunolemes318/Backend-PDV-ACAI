import 'dart:collection';
import 'package:back/models/weather_model.dart';
import 'package:uno/uno.dart';

class Weather_Controller {
  Uno getData = Uno();

  Future<void> getWeatherNow() async {
    final response = await getData.get('url');
    response.data;
  }

  changeStateDay(Day_Model day) {}
}
