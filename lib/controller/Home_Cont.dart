import 'package:get/get.dart';
import 'package:weather_app/model/currentWeather.dart';
import 'package:weather_app/service/weatherService.dart';
import 'package:weather_app/model/fiveDays.dart';

class HomeController extends GetxController {
  final String? city;

  HomeController({this.city});

  CurrentWeather currentWeather = CurrentWeather();
  List<FiveDays> fiveDays = [];
  List<CurrentWeather> dataList = [];

  @override
  void onInit() {
    initState();
    getTopFiveCites();
    super.onInit();
  }

  void updateWeather() {
    initState();
  }

  void initState() {
    getCurrentWeatherDate();
    getFiveDaysData();
  }

  void getCurrentWeatherDate() {
    WeatherService(city: city).getCurrentDate(onSuccess: (data) {
      currentWeather = data;
      update();
    }, onError: (error) {
      print(error);
      update();
    });
  }

  void getTopFiveCites() {
    List<String> cites = [
      'Hebron',
      'Bethlahem',
      'Ramallah',
      'Jerusalem',
      'Gaza'
    ];
    cites.forEach((element) {
      WeatherService(city: city).getCurrentDate(onSuccess: (data) {
        dataList.add(data);
        update();
      }, onError: (error) {
        print(error);
        update();
      });
    });
    WeatherService(city: city).getCurrentDate(onSuccess: (data) {
      currentWeather = data;
      update();
    }, onError: (error) {
      print(error);
      update();
    });
  }

  void getFiveDaysData() {
    WeatherService(city: city).getFiveHoursForcastData(
      onSuccess: (data) {
        fiveDays = data;
        update();
      },
      onError: (error) {
        print(error);
        update();
      },
    );
  }
}
