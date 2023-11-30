import 'package:get/get.dart';
import 'package:weather_app/controller/Home_Cont.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(city: 'Hebron'));
  }
}
