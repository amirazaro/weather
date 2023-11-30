import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/HomeScreen.dart';
import 'package:weather_app/utils/Binding/HomeBinding.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen (


      ),

    );
  }
}