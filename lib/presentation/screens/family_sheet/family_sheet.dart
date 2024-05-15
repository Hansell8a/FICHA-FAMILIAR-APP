import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/views/family_sheet_form1.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/views/family_sheet_form2.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/views/family_sheet_form3.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/views/family_sheet_form4.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/views/family_sheet_form5.dart';
import 'package:flutter_boiler/presentation/screens/home/utils/colors.dart';
import 'package:flutter_boiler/presentation/widgets/custom_button.dart';
import 'package:flutter_boiler/presentation/widgets/loader_widget.dart';
import 'package:flutter_boiler/utils/global.colors.dart';
import 'package:go_router/go_router.dart';

class FamilySheet extends StatefulWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheet({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FamilySheetState createState() => _FamilySheetState();
}

class _FamilySheetState extends State<FamilySheet> {
  int currentIndex = 0;

  final List<Widget> views = [
    const FamilySheetForm1(),
    const FamilySheetForm2Screen(),
    const FamilySheetForm3Screen(),
    const FamilySheetForm4(),
    const FamilySheetForm5(),
  ];

  void goToNextView() {
    setState(() {
      currentIndex = (currentIndex + 1) % views.length;
    });
  }

  void goToPreviousView() {
    setState(() {
      currentIndex = (currentIndex - 1) % views.length;
      if (currentIndex < 0) {
        currentIndex = views.length - 1;
      }
    });
  }

  void _handleButtonTap() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
      goToNextView();
    });
  }

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndex],
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (currentIndex > 0)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: CustomButton(
                  onTap: () {
                    goToPreviousView();
                  },
                  text: "< Atras",
                  colorBorder: Colors.black,
                  color: null,
                  textColor: mainText,
                ),
              ),
            ),
          if (currentIndex < views.length - 1)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: _isLoading
                    ? const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green))
                    : CustomButton(
                        onTap: _handleButtonTap,
                        text: _isLoading ? "Guardando..." : "Siguiente >",
                        color: _isLoading ? Colors.green : mainText,
                      ),
              ),
            ),

          // Expanded(
          //   child: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 100),
          //     child: CustomButton(
          //       onTap: () {
          //         goToNextView();
          //       },
          //       text: "Siguiente >",
          //       color: mainText,
          //     ),
          //   ),
          // ),
          if (currentIndex == views.length - 1)
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: CustomButton(
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                      const LoaderWidget().show(context);
                    });

                    Future.delayed(const Duration(seconds: 3), () {
                      GoRouter.of(context).go('/home');
                    });
                  },
                  text: "Guardar",
                  color: GlobalColors.purple,
                ),
              ),
            )
        ],
      ),
    );
  }
}
