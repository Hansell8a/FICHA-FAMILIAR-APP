class LoginRolResponse {
  String rol;
  int idRol;
  String? key;

  LoginRolResponse({
    required this.rol,
    required this.idRol,
    this.key,
  });

  factory LoginRolResponse.fromJson(Map<String, dynamic> json) {
    return LoginRolResponse(
      rol: json['rol'],
      idRol: json['idRol'],
      key: json[' key'],
    );
  }
}
