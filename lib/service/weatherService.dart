import 'package:weather_app/api/APIrepo.dart';
import 'package:weather_app/model/currentWeather.dart';
import 'package:weather_app/model/fiveDays.dart';

class WeatherService {
  final String? city;

  WeatherService({this.city});

  String baseUrl = "https://api.openweathermap.org/data/2.5";

  String apiKey = "appid=f42b4c8b24f3c67155b4133206b51fde";

  void getCurrentDate({
    Function()? beforSend,
    Function(CurrentWeather currentWeather)? onSuccess,
    Function(dynamic)? onError,
  }) {
    final url = "$baseUrl/weather?q=$city$apiKey";
    ApiRep(url: url, payload: null).getData(
        () => beforSend?.call(),
        (data) => onSuccess?.call(CurrentWeather.fromJson(data)),
        (error) => onError?.call(error));
  }

  void getFiveHoursForcastData({
    Function()? beforSend,
    Function(List<FiveDays> fiveDayData)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    final url = "$baseUrl/forecast?q=$city$apiKey";
    ApiRep(url: url, payload: null).getData(
        () => beforSend,
        (data) => {
              onSuccess?.call((data['list'] as List)
                      ?.map((t) => FiveDays.fromJson(t))
                      ?.toList() ??
                  List.empty()),
            },
        (error) => onError?.call(error));
  }
}
