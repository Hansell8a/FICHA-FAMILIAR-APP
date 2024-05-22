import 'dart:convert';

import 'package:app_vacunacion_movil/configuration/configuration.dart';
import 'package:app_vacunacion_movil/models/web/auth/login_request.dart';
import 'package:app_vacunacion_movil/models/web/auth/login_response.dart';
import 'package:http/http.dart';

class AuthService {
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'client-credencial': MSPAS_CLIENT_CREDENTIAL
  };

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      Uri url = Uri.parse(BASE_WS_AUTH + WS_AUTH_LOGIN);
      Response response = await post(url,
          body: loginRequest.toRequestFormat(), headers: requestHeaders);
      LoginResponse loginResponse =
          LoginResponse.fromJson(jsonDecode(response.body.toString()));
      return loginResponse;
    } catch (e) {
      return handleCatch(e, LoginResponse(idUsuario: 0));
    }
  }

  dynamic handleCatch(Object e, dynamic wrapper) {
    if (e.toString().contains("No route to host") ||
        e.toString().contains("No address associated with hostname") ||
        e.toString().contains("Connection refused") ||
        e.toString().contains("Network is unreachable")) {
      wrapper.idUsuario = 0;
    } else {
      wrapper.idUsuario = 0;
    }
    return wrapper;
  }
}
