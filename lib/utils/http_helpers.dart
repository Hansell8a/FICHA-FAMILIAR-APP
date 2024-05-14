import 'package:dio/dio.dart';
import 'package:flutter_boiler/utils/enums/type_request.dart';
import 'package:flutter_boiler/utils/exception_helper.dart';


/// Class used to handle API requests
class HttpClientHelper {
  /// Class used to handle API requests
  HttpClientHelper(this.dio);

  /// Get the dio instance from the authentication datasource
  final Dio dio;

  /// Method used to make HTTP requests without token.
  Future<Response<dynamic>> requestHelper({
    required String endpoint,
    String? token,
    required TypeRequests typeOfRequests,
    Map<String, dynamic>? data,
    Options? requestOptions,
  }) async {
    final Options defaultRequestOptions = Options(
      followRedirects: false,
      validateStatus: (status) => true,
      headers: {
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    try {
      switch (typeOfRequests) {
        // ============ Get Request =========== //

        case TypeRequests.get:
          final Response<dynamic> response = await dio.get(endpoint,
              data: data, options: requestOptions ?? defaultRequestOptions);

          if (response.statusCode != 200) {
            ExceptionsHelper.validateApiException(response);
          }

          return response;

        // ===================================== //

        // ============ Post Request =========== //

        case TypeRequests.post:
          final Response<dynamic> response = await dio.post(endpoint,
              data: data, options: requestOptions ?? defaultRequestOptions);

          if (response.statusCode != 200 && response.statusCode != 201) {
            ExceptionsHelper.validateApiException(response);
          }

          return response;

        // ===================================== //

        // ============ Put Request =========== //

        case TypeRequests.put:
          final Response<dynamic> response = await dio.put(endpoint,
              data: data, options: requestOptions ?? defaultRequestOptions);

          if (response.statusCode != 200) {
            ExceptionsHelper.validateApiException(response);
          }

          return response;

        // ===================================== //

        // ============ Delete Request =========== //

        case TypeRequests.delete:
          final Response<dynamic> response = await dio.delete(endpoint,
              options: requestOptions ?? defaultRequestOptions);

          if (response.statusCode != 200) {
            ExceptionsHelper.validateApiException(response);
          }

          return response;

        // ===================================== //

        default:
          throw ApiException(null, null, 500);
      }
    } on Exception catch (_) {
      rethrow;
    }
  }
}
