// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:eigth/Modeles/weatherModele.dart';
import 'package:eigth/Public/publicVar.dart';

class WeatheFunction {
  final dio = Dio();
  Future<WeatherModele> getWeather() async {
    final response = await dio.get(
        'https://api.weatherapi.com/v1/current.json?key=d5cb764ec70f4e4bad0135402232611&q=${PublicVariable.city}');
    Map<String, dynamic> jsonData = response.data;
    Map<String, dynamic> currentWeather = jsonData["current"];
    Map<String, dynamic> condition = currentWeather["condition"];
    WeatherModele weatherModele = WeatherModele(
      fealeTem: currentWeather["feelslike_c"].toString(),
      image: 'https:${condition["icon"]}',
      lastUpdate: currentWeather["last_updated"],
      nameOfCity: PublicVariable.city,
      tem: currentWeather["temp_c"].toString(),
      weather: condition["text"],
    );
    return weatherModele;
  }
}
