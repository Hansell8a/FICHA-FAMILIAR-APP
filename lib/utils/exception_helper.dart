import 'package:dio/dio.dart';

/// Exception handling helper class
class ExceptionsHelper {
  /// Exception handling helper class
  ExceptionsHelper();

  /// Method to handle custom exceptions.
  /// This method only covers the most common exceptions.
  /// Any other exception that is not covered will return an exception with a default message.
  static Exception validateApiException(Response response) {
    if (response.data != null) {
      switch (response.statusCode) {
        case 400:
          throw ApiException(
              response.statusMessage,
              response.data is String
                  ? response.data
                  : response.data['message'],
              response.statusCode);
        case 401:
          throw ApiException(
              'Su token a expirado por favor inicie sesion nuevamente');
        case 404:
          throw ApiException(
              response.statusMessage, response.data, response.statusCode);
        default:
          throw ApiException(
              response.statusMessage, response.data, response.statusCode);
      }
    }

    throw ApiException(
        'Esperando mejoras por parte de backend', 'Error interno', 500);
  }
}

/// Class for custom exceptions.
/// Each exception is made up of a code [code], message [message] and title [title].
/// Each exception should be as clear and concise as possible.
class ApiException implements Exception {
  /// Class for custom exceptions.
  /// Each exception is made up of a code [code], message [message] and title [title].
  /// Each exception should be as clear and concise as possible.
  ApiException([this._message, this._title, this._code]);

  final int? _code;
  final String? _message;
  final String? _title;

  @override
  String toString() => "$_code: $_title ${_message ?? ""}";

  /// Error code
  int? get code => _code;

  /// Error message
  String? get message => _message;

  /// Error title
  String? get title => _title;
}
