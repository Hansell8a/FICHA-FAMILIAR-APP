import 'package:app_vacunacion_movil/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/';

  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Provider.of<LoginProvider>(context, listen: false).existeSesion(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Spacer(),
          FractionallySizedBox(
            widthFactor: .6,
            child: Image(
              image: AssetImage('assets/images/logo-mspas.png'),
              width: 400,
            ),
          ),
          Spacer(),
          Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
