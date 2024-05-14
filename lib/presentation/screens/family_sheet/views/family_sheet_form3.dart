import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_app_bar.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_card_pets.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_modal_view.dart';
import 'package:flutter_boiler/presentation/screens/home/utils/colors.dart';
import 'package:flutter_boiler/presentation/widgets/custom_button.dart';
import 'package:flutter_boiler/presentation/widgets/custom_text_form_fild.dart';
import 'package:go_router/go_router.dart';

class FamilySheetForm3Screen extends StatelessWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheetForm3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FamilySheetForm3View();
  }
}

class FamilySheetForm3View extends StatefulWidget {
  const FamilySheetForm3View({Key? key}) : super(key: key);

  @override
  State<FamilySheetForm3View> createState() => _FamilySheetForm3ViewState();
}

class _FamilySheetForm3ViewState extends State<FamilySheetForm3View> {
  bool isModalVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () => GoRouter.of(context).go('/home'),
        title: 'Ficha Familiar / Características de la vivienda',
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
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Cantidad de dormitorios',
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Cantidad de cuartos',
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 40),
                const Icon(
                  Icons.pets,
                  size: 30,
                  color: Color.fromARGB(255, 10, 91, 197),
                ),
                const SizedBox(width: 8),
                const Text(
                  'Animales domesticos de las viviendas',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 240),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomButton(
                      onTap: () {
                        _showModal(context);
                      },
                      text: "+",
                      colorBorder: Colors.black,
                      color: null,
                      textColor: mainText,
                    ),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isModalVisible,
              child: const SizedBox(
                width: 770,
                child: CustomCardPets(
                  texts: [
                    'Animal: Perro',
                    'Cantidad: 2',
                    'Vive dentro de la casa: Si',
                    'Condiciones adecuadas: Si',
                    'Vacunas al dia: Si',
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const CustomModalView(texts: []),
        );
      },
    ).then((value) {
      setState(() {
        isModalVisible = true; // Cuando se cierra el modal, se cambia la visibilidad a falso
      });
    });
  }
}
