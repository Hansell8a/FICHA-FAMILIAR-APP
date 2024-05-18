import 'package:dio/dio.dart';
import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/data/models/auth_model.dart';
import 'package:flutter_boiler/domain/datasource/auth/auth_datasource.dart';
import 'package:flutter_boiler/utils/enums/type_request.dart';
import 'package:flutter_boiler/utils/http_helpers.dart';
import 'package:flutter_boiler/utils/user_token_helpers.dart';

class AuthDataSourceImpl extends AuthDataSource {
  /// Class used to implement http requests and handle json response
  AuthDataSourceImpl([Dio? dio]) {
    this.dio = dio ?? this.dio;
  }

  /// This is the dio instance that will be used to make HTTP requests
  late Dio dio = serviceLocator<Dio>();

  @override
  Future<dynamic> login(
      {required String email, required String passwod}) async {
    try {
      final Response<dynamic> response = await HttpClientHelper(dio)
          .requestHelper(
              endpoint: 'login',
              typeOfRequests: TypeRequests.post,
              data: {
            'email': 'APP',
            'password': "12345",
          });

      final AuthModel authModel = AuthModel.fromJson(response.data);

      await UserTokenSharedPreferences.saveValueAuthToken(authModel.data.tokenMovil);
      await UserTokenSharedPreferences.saveValueCuiNumber(authModel.data.cui);
      await UserTokenSharedPreferences.saveValueFullName(authModel.data.nombreCompleto);
      await UserTokenSharedPreferences.saveValueUserId(authModel.data.idUsuario);
      
    } catch (e) {
      rethrow;
    }
  }
}
