import 'dart:convert';

import 'package:app_vacunacion_movil/configuration/configuration.dart';
import 'package:app_vacunacion_movil/models/web/core/persona_request.dart';
import 'package:app_vacunacion_movil/models/web/core/persona_response.dart';
import 'package:http/http.dart';

class PersonaService {
  Map<String, String> obtenerHeaders(String token) {
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
  }

  Future<PersonaResponse> registrarPersona(
      PersonaRequest personaRequest, String token) async {
    try {
      Uri url = Uri.parse(BASE_WS_CORE + WS_PERSONA_SEG_MSPAS_INSERT);
      Response response = await post(url,
          body: personaRequest.toRequestFormat(),
          headers: obtenerHeaders(token));
      PersonaResponse operationResponse =
          PersonaResponse.fromJson(jsonDecode(response.body.toString()));
      return operationResponse;
    } catch (e) {
      return handleCatch(e, PersonaResponse(idPersona: -1));
    }
  }

  dynamic handleCatch(Object e, dynamic wrapper) {
    if (e.toString().contains("No route to host") ||
        e.toString().contains("No address associated with hostname") ||
        e.toString().contains("Connection refused") ||
        e.toString().contains("Network is unreachable")) {
      wrapper.status = "Revise la conexión de datos";
    } else {
      wrapper.idPersona = -1;
    }
    return wrapper;
  }
}
