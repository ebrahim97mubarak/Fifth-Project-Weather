// ignore_for_file: file_names

import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeCubit.dart';
import 'package:eigth/Functions/weatherFunction.dart';
import 'package:eigth/Public/publicVar.dart';
import 'package:eigth/Screens/searchScreen.dart';
import 'package:eigth/Widgets/bodyNoWeatherWidget.dart';
import 'package:eigth/Widgets/responceWeatherWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Weather',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // ignore: non_constant_identifier_names
                  final Test=PublicVariable.city;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SearchScreen();
                      },
                    ),
                  ).then(
                    (value) {
                      if (PublicVariable.city == ''&&PublicVariable.city!=Test) {
                        //PublicVariable.WeatherState='';
                        BlocProvider.of<ColorOfthemeCubit>(context).getColor(weather: '');
                        setState(() {});
                      }
                      else if(PublicVariable.city!=Test)
                      // ignore: curly_braces_in_flow_control_structures
                      setState(
                        () {
                          PublicVariable.weatherModele =
                              WeatheFunction().getWeather();
                        },
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.search,
                ),
              ),
            ],
          ),
        ),
      ),
      body: PublicVariable.city == ''
          ? const BodyNoWeatherWidget()
          // ignore: prefer_const_constructors
          : ResponceWeatherWidget(),
    );
  }
}
