import 'dart:io';

import 'package:app_vacunacion_movil/pages/core/persona_page.dart';
import 'package:app_vacunacion_movil/pages/login_page.dart';
import 'package:app_vacunacion_movil/pages/bienvenida_page.dart';
import 'package:app_vacunacion_movil/pages/splash_page.dart';
import 'package:app_vacunacion_movil/provider/core/persona_provider.dart';
import 'package:app_vacunacion_movil/provider/login_provider.dart';
import 'package:app_vacunacion_movil/routes/page_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => PersonaProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: '/',
        // initialRoute: '/login',
        routes: {
          PageRoutes.login: (context) => const LoginPage(),
          PageRoutes.bienvenida: (_) => const BienvenidaPage(),
          PageRoutes.personas: (_) => PersonaPage(),
        },
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
        home: SplashPage(),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
