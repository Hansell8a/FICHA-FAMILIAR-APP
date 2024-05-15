import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/datasource/auth/auth_datasource_impl.dart';
import 'package:flutter_boiler/data/repository/auth/auth_repository_impl.dart';
import 'package:flutter_boiler/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter_boiler/presentation/screens/home/home_screen.dart';
import 'package:flutter_boiler/presentation/widgets/loader_widget.dart';
import 'package:flutter_boiler/utils/enums/request_progress_status.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const String path = '/login';
  static const String pathName = 'login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(
        authRepository: AuthRepositoryImpl(
          authDatasource: AuthDataSourceImpl(),
        ),
      ),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.progressStatus == RequestProgressStatus.loading) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            const LoaderWidget().show(context);
          });
        }

        if (state.progressStatus == RequestProgressStatus.error) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            // Hide loading
            context.pop();

            // Show error
            ElegantNotification.error(
              description: const Text("Error de autenticación"),
              toastDuration: const Duration(seconds: 10),
              width:300,
              height: 80,
            ).show(context);
          });
        }

        if (state.progressStatus == RequestProgressStatus.success) {
          // Go to home
          context.go(HomeScreen.path);
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 600,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 270,
                        width: 320,
                        height: 320,
                        top: 100,
                        child: FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logotipo.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            width: 200, // Ancho deseado de la imagen
                            height: 200, // Alto deseado de la imagen
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                          duration: const Duration(milliseconds: 1800),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(143, 148, 251, 1)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color.fromRGBO(143, 148, 251, 1),
                                      ),
                                    ),
                                  ),
                                  child: BlocBuilder<AuthBloc, AuthState>(
                                    buildWhen: (previous, current) =>
                                        previous.email != current.email,
                                    builder: (context, state) {
                                      return TextFormField(
                                        initialValue: state.email,
                                        onChanged: (value) =>
                                            context.read<AuthBloc>().add(
                                                  OnEmailChangedEvent(value),
                                                ),
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Usuario",
                                          prefixIcon:
                                              Icon(Icons.person, size: 40),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: BlocBuilder<AuthBloc, AuthState>(
                                    buildWhen: (previous, current) =>
                                        previous.password != current.password,
                                    builder: (context, state) {
                                      return TextFormField(
                                        initialValue: state.password,
                                        onChanged: (value) =>
                                            context.read<AuthBloc>().add(
                                                  OnPasswordChangedEvent(value),
                                                ),
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Contraseña",
                                          prefixIcon:
                                              Icon(Icons.lock, size: 40),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1900),
                        child: ElevatedButton(
                          onPressed: () => {
                            // SplashScreen
                            context
                                .read<AuthBloc>()
                                .add(const AuthLoginEvent()),

                            // Go to home
                            // context.go(HomeScreen.pathName),
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(143, 148, 251, 1),
                            ),
                          ),
                          child: const SizedBox(
                            height: 50,
                            child: Center(
                              child: Text(
                                "Iniciar sesión",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      FadeInUp(
                          duration: const Duration(milliseconds: 2000),
                          child: const Text(
                            "version 1.0.0",
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
