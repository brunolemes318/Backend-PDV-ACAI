import 'package:uno/uno.dart';

class WeatherModel {
  Uno getData = Uno();
  
  WeatherModel();

  Future<void> getWeatherNow() async {
    
    final response = await getData.get('url');
    response.data;
  }
}
