import 'package:dio/dio.dart';
import 'package:flutter_boiler/config/constants/api_constans.dart';

class DioConfig {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // 'X-API-KEY': ApiConstants.apiKey,
      },
    ),
  );
}
