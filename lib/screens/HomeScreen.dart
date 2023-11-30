import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controller/Home_Cont.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/service/weatherService.dart';
import 'package:weather_app/utils/binding/homeBinding.dart';


class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeBinding homeBinding = HomeBinding();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your menu icon tap logic here
              print('Menu Icon Tapped');
            },
          ),
        ),

      ),

    );
  }
}