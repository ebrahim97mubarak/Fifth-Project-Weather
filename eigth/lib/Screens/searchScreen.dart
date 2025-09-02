// ignore_for_file: file_names

import 'package:eigth/Public/publicVar.dart';
import 'package:eigth/Widgets/contenarOfScreen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PublicVariable.city = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search a City',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: ContenarOfScreen(
        childWidget: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              onSubmitted: (value) {
                PublicVariable.city = value;
              },
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter City Name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
