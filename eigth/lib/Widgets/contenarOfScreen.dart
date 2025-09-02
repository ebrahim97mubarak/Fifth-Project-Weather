// ignore_for_file: file_names

import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeCubit.dart';
import 'package:eigth/Cubits/ColorOfthemeCubit/ColorOfthemeStetes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ContenarOfScreen extends StatelessWidget {
  const ContenarOfScreen({super.key, required this.childWidget});
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorOfthemeCubit, ColorState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                BlocProvider.of<ColorOfthemeCubit>(context).materialColor[400]!,
                BlocProvider.of<ColorOfthemeCubit>(context).materialColor[200]!,
                BlocProvider.of<ColorOfthemeCubit>(context).materialColor[100]!,
              ],
              begin: Alignment.topLeft,
            ),
          ),
          child: childWidget,
        );
      },
    );
  }
}
