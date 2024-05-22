import 'package:app_vacunacion_movil/provider/login_provider.dart';
import 'package:app_vacunacion_movil/routes/page_routes.dart';
import 'package:app_vacunacion_movil/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static const String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  void handleIniciarSesion(String usuario, String password,
      BuildContext context, LoginProvider loginProvider) async {
    if (usuario == "" || password == "") {
      mostrarNotificacion(context, 'Debe ingresar las credenciales');
      return null;
    }

    bool loginValido =
        await loginProvider.iniciarSesion(usuario.toUpperCase(), password);
    if (loginValido) {
      Navigator.pushReplacementNamed(context, PageRoutes.bienvenida);
    } else {
      mostrarNotificacion(context, 'Ocurrio un error al inciar sesión');
    }
  }

  mostrarNotificacion(BuildContext context, String texto) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(texto)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Consumer<LoginProvider>(
            builder: (context, loginProvider, child) => SingleChildScrollView(
                child: loginProvider.loading
                    ? loading()
                    : formularioLogin(context, loginProvider))));
  }

  Widget formularioLogin(BuildContext context, LoginProvider loginProvider) {
    TextEditingController usuarioController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: const Image(
            image: AssetImage('assets/images/logo-mspas.png'),
            height: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Vacunación Móvil',
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue[700],
            ),
          ),
        ),
        TextFieldWidget(
          labelText: 'Usuario',
          textFieldIcon: const Icon(Icons.account_circle_outlined),
          texto: usuarioController,
        ),
        TextFieldWidget(
          labelText: 'Contraseña',
          textFieldIcon: const Icon(Icons.lock),
          obscureText: true,
          texto: passwordController,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 55,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
                child: const Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => handleIniciarSesion(
                    usuarioController.text.toString(),
                    passwordController.text.toString(),
                    context,
                    loginProvider),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget loading() {
    return const Center(child: CircularProgressIndicator(color: Colors.blue));
  }
}
