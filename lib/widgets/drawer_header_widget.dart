import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
        child: Image(image: AssetImage('assets/images/logo-mspas.png')));
  }
}
