import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Expediente clinico',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 75, 173, 1),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 320,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logotipo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  '¡Bienvenido!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 75, 173, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
