// ignore: unused_import
import 'dart:convert';

class AuthModel {
  int status;
  bool success;
  String message;
  Data data;

  AuthModel({
    required this.status,
    required this.success,
    required this.message,
    required this.data,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int idUsuario;
  String username;
  String email;
  int cui;
  String nombres;
  String apellidos;
  int expiration;
  bool firstLogin;
  String institution;
  List<Role> roles;
  String tokenMovil;

  Data({
    required this.idUsuario,
    required this.username,
    required this.email,
    required this.cui,
    required this.nombres,
    required this.apellidos,
    required this.expiration,
    required this.firstLogin,
    required this.institution,
    required this.roles,
    required this.tokenMovil,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        idUsuario: json["idUsuario"],
        username: json["username"],
        email: json["email"] ?? "",
        cui: json["cui"],
        nombres: json["nombres"],
        apellidos: json["apellidos"],
        expiration: json["expiration"],
        firstLogin: json["firstLogin"],
        institution: json["institution"],
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        tokenMovil: json["tokenMovil"],
      );
}

class Role {
  String rol;
  int idRol;
  String key;

  Role({
    required this.rol,
    required this.idRol,
    required this.key,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        rol: json["rol"],
        idRol: json["idRol"],
        key: json["key"],
      );
}
