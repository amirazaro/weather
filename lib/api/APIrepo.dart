import 'package:dio/dio.dart';

class ApiRep {
  late Dio _dio;
  late String url;

  late Map<String, dynamic>? payload;

  ApiRep({required this.url, this.payload});

  void getData(
    Function() beforSend,
    Function(Map<String, dynamic> data) onSuccess,
    Function(dynamic) onError,
  ) {
    //body method
    _dio.get(url, queryParameters: payload).then((respons) {
      if (onSuccess != null) {
        onSuccess(respons.data);
      }
    }).catchError((erroe) {
      onError(erroe);
    });
  }
}
