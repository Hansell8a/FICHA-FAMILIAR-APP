import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/home/widgets/custom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String path = '/home';
  static const String pathName = 'home';

  const HomeScreen({Key? key})
      : super(key: key); // Corrección en la declaración del constructor

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
