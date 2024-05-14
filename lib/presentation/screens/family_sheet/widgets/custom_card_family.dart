import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler/utils/global.colors.dart';

class CustomCardFamily extends StatelessWidget {
  final List<String> texts;

  const CustomCardFamily({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.black,
      color: GlobalColors.backgroundColor2,
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
              ],
            ),
          ),
          Positioned(
            top: 7,
            right: 10,
            child: IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Información");
              },
              icon: const Icon(
                Icons.expand_more_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
