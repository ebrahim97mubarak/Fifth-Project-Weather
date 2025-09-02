// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BodyNoWeatherWidget extends StatelessWidget {
  const BodyNoWeatherWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey[400]!,
            Colors.grey[200]!,
            Colors.grey[100]!,
          ],
          begin: Alignment.topLeft
        ),
      ),
      child: const Center(
        child: Text(
          'There is no weather 😔 Start searchig now 🔍',
          style: TextStyle(
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
