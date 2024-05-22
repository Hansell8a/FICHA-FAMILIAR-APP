import 'package:app_vacunacion_movil/configuration/configuration.dart';
import 'package:app_vacunacion_movil/models/web/auth/login_request.dart';
import 'package:app_vacunacion_movil/models/web/auth/login_response.dart';
import 'package:app_vacunacion_movil/routes/page_routes.dart';
import 'package:app_vacunacion_movil/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  bool _loading = false;
  // late String _usuario;

  bool get loading => _loading;
  // String get usuario => _usuario;

  void iniciarLoading() {
    _loading = true;
    notifyListeners();
  }

  void finalizarLoading() {
    _loading = false;
    notifyListeners();
  }

  Future<bool> iniciarSesion(String email, String password) async {
    iniciarLoading();
    LoginRequest loginRequest = LoginRequest(email: email, password: password);
    AuthService authService = AuthService();
    LoginResponse loginResponse = await authService.login(loginRequest);

    bool resultado = loginResponse.idUsuario != 0;

    if (resultado) {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString(VACUNA_TOKEN, loginResponse.token!);
      sharedPreferences.setString(
          VACUNA_USUARIO, loginResponse.idUsuario.toString());
      // datosUsuario(loginResponse);
    }
    finalizarLoading();
    return resultado;
  }

  void existeSesion(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString(VACUNA_TOKEN);
    if (token == null) {
      Navigator.pushReplacementNamed(context, PageRoutes.login);
    } else {
      // datosUsuario(sharedPreferences);
      // Provider.of<VentaProvider>(context, listen: false).cargarVentasDelDia();
      Navigator.pushReplacementNamed(context, PageRoutes.bienvenida);
    }
  }

  Future<void> cerrarSesion(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(VACUNA_TOKEN);
    sharedPreferences.remove(VACUNA_USUARIO);
    // _usuario = "";
    Navigator.pushReplacementNamed(context, PageRoutes.login);
  }

  // void datosUsuario(LoginResponse loginResponse) async {
  //   _usuario = loginResponse.username!;
  // }
}
