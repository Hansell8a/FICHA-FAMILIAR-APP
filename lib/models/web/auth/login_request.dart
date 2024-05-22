import 'dart:convert';

class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  String toRequestFormat() {
    Map<String, dynamic> tmp = {
      'email': email,
      'password': password,
    };
    return jsonEncode(tmp);
  }
}
