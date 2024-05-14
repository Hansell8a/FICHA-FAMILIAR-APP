import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_app_bar.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_card_family.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_card_view_sheet_desc.dart';
import 'package:flutter_boiler/presentation/screens/home/utils/colors.dart';
import 'package:flutter_boiler/presentation/widgets/custom_button.dart';
import 'package:go_router/go_router.dart';

class FamilySheetForm4 extends StatefulWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheetForm4({Key? key}) : super(key: key);

  @override
  _FamilySheetForm4State createState() => _FamilySheetForm4State();
}

class _FamilySheetForm4State extends State<FamilySheetForm4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () => GoRouter.of(context).go('/home'),
        title: 'Ficha Familiar / Integrantes de la familia',
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const SizedBox(height: 20),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const SizedBox(height: 0),
            ),
            Row(
              children: [
                const SizedBox(width: 40),
                const Text(
                  'Familias',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 400),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: CustomButton(
                      onTap: () {},
                      text: "Agregar familia +",
                      colorBorder: Colors.black,
                      color: null,
                      textColor: mainText,
                    ),
                  ),
                ),
              ],
            ),
            const Visibility(
              visible: true,
              child: SizedBox(
                width: 770,
                child: CustomCardFamily(
                  texts: [
                    'Familia 1',
                  ],
                ),
              ),
            ),
            const Visibility(
              visible: true,
              child: SizedBox(
                width: 770,
                child: CustomCardFamily(
                  texts: [
                    'Familia 2',
                  ],
                ),
              ),
            ),
            const Visibility(
              visible: true,
              child: SizedBox(
                width: 770,
                child: CustomCardFamily(
                  texts: [
                    'Familia 3',
                  ],
                ),
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 770,
                  child: CustomCardFamily(
                    texts: [
                      'Familia 4',
                    ],
                  ),
                ),
                Visibility(
                  visible: true,
                  child: SizedBox(
                    width: 770,
                    child: CustomCardViewSheetDesc(
                      texts: [
                        "No. 1",
                        "CUI: 2010344",
                        "Nombres: Vanessa Maria",
                        "Apellidos: Lason Lopez",
                        "Parentesco: Jefe de hogar",
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: true,
                  child: SizedBox(
                    width: 770,
                    child: CustomCardViewSheetDesc(
                      texts: [
                        "No. 1",
                        "CUI: 2010344",
                        "Nombres: Vanessa Maria",
                        "Apellidos: Lason Lopez",
                        "Parentesco: Jefe de hogar",
                      ],
                    ),
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
