// ignore_for_file: file_names

import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeCubit.dart';
import 'package:eigth/Public/publicVar.dart';
import 'package:eigth/Widgets/bodyWeatherWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResponceWeatherWidget extends StatelessWidget {
  const ResponceWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PublicVariable.weatherModele,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //PublicVariable.WeatherState = snapshot.data!.weather;
          BlocProvider.of<ColorOfthemeCubit>(context)
              .getColor(weather: snapshot.data!.weather);
          return BodyWeatherWidget(weatherModel: snapshot.data!);
        } else if (snapshot.hasError) {
          //PublicVariable.WeatherState = '';
          BlocProvider.of<ColorOfthemeCubit>(context).getColor(weather: '');
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
