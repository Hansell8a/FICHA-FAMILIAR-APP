import 'package:flutter/material.dart';

class CustomCardPets extends StatelessWidget {
  final List<String> texts;

  const CustomCardPets({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.black,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 20,
            child: IconButton(
              onPressed: () {
                // Manejar la acción del botón aquí
                // ignore: avoid_print
                print("Información");
              },
              icon: Image.asset(
                'assets/images/pawprint.png', // Ruta de la imagen
                width: 100, // Ancho del icono
                height: 100, // Alto del icono
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 130),
            child: Column(
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
          ),
        ],
      ),
    );
  }
}
