import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeCubit.dart';
import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeStetes.dart';
import 'package:eigth/Screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main() {
  runApp(BlocProvider(
    create: (context) => ColorOfthemeCubit(ColorDefulteState()),
    child: const weather(),
  ));
}

// ignore: camel_case_types, must_be_immutable
class weather extends StatelessWidget {
  const weather({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorOfthemeCubit, ColorState>(
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch:
                BlocProvider.of<ColorOfthemeCubit>(context).materialColor,
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}
