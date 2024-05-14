import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String baseUrl = kReleaseMode
      ? const String.fromEnvironment('API_URL')
      : dotenv.env['API_URL']!;
  static String apiKey = kReleaseMode
      ? const String.fromEnvironment('API_KEY')
      : dotenv.env['API_KEY']!;

  static String token = kReleaseMode
      ? const String.fromEnvironment('TOKEN') : dotenv.env['TOKEN']!;
}
