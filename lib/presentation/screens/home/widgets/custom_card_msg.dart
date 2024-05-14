import 'package:flutter/material.dart';

class CustomCardMsg extends StatelessWidget {
  final List<String> texts;

  const CustomCardMsg({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.black,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: texts.map((text) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(2, 23, 50, 1),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Positioned(
            top: 17,
            right: 17,
            child: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Información");
              },
              icon: Image.asset(
                'assets/images/alerta.png',
                width: 40, // Ancho del icono
                height: 40, // Alto del icono
              ),
            ),
          ),
        ],
      ),
    );
  }
}
