import 'package:flutter/material.dart';
import 'package:flutter_boiler/utils/global.colors.dart';

class CustomCardViewSheetDesc extends StatelessWidget {
  final List<String> texts;

  const CustomCardViewSheetDesc({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: GlobalColors.cardColor,
      color: GlobalColors.cardColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero, // Establecer el radio del borde a cero
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
        ],
      ),
    );
  }
}
