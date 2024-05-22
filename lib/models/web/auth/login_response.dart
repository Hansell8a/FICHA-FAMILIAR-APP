import 'dart:convert';

import 'package:app_vacunacion_movil/models/web/auth/login_rol_response.dart';

class LoginResponse {
  int idUsuario;
  String? username;
  String? email;
  int? cui;
  String? nombres;
  String? apellidos;
  int? idPuesto;
  int? idInstitucion;
  String? idas;
  String? idds;
  String? idts;
  int? idUnidadEjecutora;
  String? token;
  String? refreshToken;
  int? expiration;
  bool? firstLogin;
  String? institution;
  LoginRolResponse? rol;

  LoginResponse({
    required this.idUsuario,
    this.username,
    this.email,
    this.cui,
    this.nombres,
    this.apellidos,
    this.idPuesto,
    this.idInstitucion,
    this.idas,
    this.idds,
    this.idts,
    this.idUnidadEjecutora,
    this.token,
    this.refreshToken,
    this.expiration,
    this.firstLogin,
    this.institution,
    this.rol,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    LoginRolResponse rol = LoginRolResponse.fromJson(json['roles'][0]);

    // final jsonArrayRequest =
    //     jsonDecode(json['roles']).cast<Map<String, dynamic>>();

    return LoginResponse(
      idUsuario: json['idUsuario'],
      username: json['username'],
      email: json['email'],
      cui: json['cui'],
      nombres: json['nombres'],
      apellidos: json['apellidos'],
      idPuesto: json['idPuesto'],
      idInstitucion: json['idInstitucion'],
      idas: json['idas'],
      idds: json['idds'],
      idts: json['idts'],
      idUnidadEjecutora: json['idUnidadEjecutora'],
      token: json['token'],
      refreshToken: json['refreshToken'],
      expiration: json['expiration'],
      firstLogin: json['firstLogin'],
      institution: json['institution'],
      rol: rol,
    );
  }
}
