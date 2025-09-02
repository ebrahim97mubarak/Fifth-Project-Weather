// ignore_for_file: file_names

import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeStetes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorOfthemeCubit extends Cubit <ColorState> {
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  ColorOfthemeCubit(super.ColorDefulteState);
  MaterialColor materialColor=Colors.grey;

  void getColor({required String weather})
  {
    switch (weather){
      case 'Sunny':
      case 'Clear':
      materialColor=Colors.orange;
      emit(ColorSunnyState());
      case 'Partly cloudy':
      case 'Cloudy':
      case 'Overcast':
      case 'Mist':
      materialColor=Colors.pink;
      emit(ColorCloudyState());
      case 'Patchy rain nearby':
      case 'Patchy light rain':
      case 'Light rain':
      case 'Moderate rain at times':
      case 'Moderate rain':
      case 'Heavy rain at times':
      case 'Heavy rain':
      case 'Light rain shower':
      case 'Moderate or heavy rain shower':
      case 'Torrential rain shower':
      case 'Patchy light drizzle':
      case 'Light drizzle':
      materialColor=Colors.green;
      emit(ColorRainState());
      case 'Patchy snow nearby':
      case 'Blowing snow':
      case 'Patchy light snow':
      case 'Light snow':
      case 'Patchy moderate snow':
      case 'Moderate snow':
      case 'Patchy heavy snow':
      case 'Heavy snow':
      case 'Light snow showers':
      case 'Moderate or heavy snow showers':
      case 'Patchy sleet nearby':
      case 'Light sleet':
      case 'Moderate or heavy sleet':
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
      case 'Patchy freezing drizzle nearby':
      case 'Freezing fog':
      case 'Freezing drizzle':
      case 'Heavy freezing drizzle':
      case 'Light freezing rain':
      case 'Moderate or heavy freezing rain':
      case 'Ice pellets':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
      materialColor=Colors.blue;
      emit(ColorSnowState());
      case 'Thundery outbreaks in nearby':
      case 'Patchy light rain in area with thunder':
      case 'Moderate or heavy rain in area with thunder':
      case 'Patchy light snow in area with thunder':
      case 'Moderate or heavy snow in area with thunder':
      case 'Blizzard':
      case 'Fog':
      materialColor=Colors.red;
      emit(ColorThunderyState());
      default:
      materialColor=Colors.grey;
      emit(ColorDefulteState());
    }
  }
}
