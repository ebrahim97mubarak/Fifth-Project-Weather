// ignore_for_file: file_names

import 'package:eigth/Modeles/weatherModele.dart';
import 'package:eigth/Widgets/contenarOfScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BodyWeatherWidget extends StatelessWidget {
  BodyWeatherWidget({super.key, required this.weatherModel});
  WeatherModele weatherModel;
  @override
  Widget build(BuildContext context) {
    return ContenarOfScreen(childWidget: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.nameOfCity,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          Text(
            'update at: ${weatherModel.lastUpdate.substring(weatherModel.lastUpdate.length-5)}',
            style: const TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    weatherModel.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  weatherModel.tem,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${(double.parse(weatherModel.tem) + 15).toString()}',
                    ),
                    Text(
                      'Mintemp: ${(double.parse(weatherModel.tem) - 5).toString()}',
                    ),
                    Text('feels like: ${weatherModel.fealeTem}')
                  ],
                )
              ],
            ),
          ),
          Text(
            weatherModel.weather,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ],
      ),
    ),) ;
  }
}
