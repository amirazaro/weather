import 'dart:convert';
import 'package:weather_app/model/clouds.dart';
import 'package:weather_app/model/coord.dart';
import 'package:weather_app/model/main_weather.dart';
import 'package:weather_app/model/sys.dart';
import 'package:weather_app/model/weather.dart';

class CurrentWeather {
  final Coord? coord;
  final List<dynamic>? weather;
  final String? base;
  final MainWeather? mainWeather;
  final int? visibility;
  final Cloude? cloude;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  CurrentWeather(
      {this.coord,
      this.weather,
      this.base,
      this.mainWeather,
      this.visibility,
      this.cloude,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  Map<String, dynamic> toJson() {
    return {
      "coord": this.coord,
      "weather": jsonEncode(this.weather),
      "base": this.base,
      "mainWeather": this.mainWeather,
      "visibility": this.visibility,
      "cloude": this.cloude,
      "dt": this.dt,
      "sys": this.sys,
      "timezone": this.timezone,
      "id": this.id,
      "name": this.name,
      "cod": this.cod,
    };
  }

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      coord: Coord.fromJson(json["coord"]),
      weather: List.of(json["weather"])
          .map((i) => i /* can't generate it properly yet */)
          .toList(),
      base: json["base"],
      mainWeather: MainWeather.fromJson(json["mainWeather"]),
      visibility: int.parse(json["visibility"]),
      cloude: Cloude.fromJson(json["cloude"]),
      dt: int.parse(json["dt"]),
      sys: Sys.fromJson(json["sys"]),
      timezone: int.parse(json["timezone"]),
      id: int.parse(json["id"]),
      name: json["name"],
      cod: int.parse(json["cod"]),
    );
  }
}

//
//
