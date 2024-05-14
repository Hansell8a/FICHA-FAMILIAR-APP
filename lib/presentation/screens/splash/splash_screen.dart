import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/login/login_screen.dart';
import 'package:flutter_boiler/utils/global.colors.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  static const String path = '/splash';
  static const String pathName = 'splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(LoginScreen.path);
    });

    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: SizedBox(
          width: 320,
          height: 320,
          child: Container(
            alignment:
                Alignment.center, // Centra la imagen dentro del contenedor
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logotipo.png'),
                fit: BoxFit
                    .contain, // Ajusta la imagen al contenedor manteniendo su relación de aspecto
              ),
            ),
          ),
        ),
      ),
    );
  }
}
