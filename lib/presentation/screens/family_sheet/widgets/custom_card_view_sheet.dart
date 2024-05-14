import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler/utils/global.colors.dart';

class CustomCardFamilyView extends StatelessWidget {
  final List<String> texts;

  const CustomCardFamilyView({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.black,
      color: GlobalColors.purple,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
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
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 20),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     height: 10,
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            right: 10,
            child: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Información");
              },
              icon: Image.asset(
                'assets/images/u60-house.png',
                width: 120, // Ancho del icono
                height: 120, // Alto del icono
              ),
            ),
          ),
        ],
      ),
    );
  }
}
