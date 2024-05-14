import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet_form1/family_sheet_form1_bloc.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_app_bar.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_card_view_sheet.dart';
import 'package:flutter_boiler/presentation/screens/home/views/family_sheet_view.dart';
import 'package:go_router/go_router.dart';

class FamilySheetForm5 extends StatefulWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheetForm5({Key? key}) : super(key: key);

  @override
  _FamilySheetForm5State createState() => _FamilySheetForm5State();
}

class _FamilySheetForm5State extends State<FamilySheetForm5> {
  bool modalView = false;

  late List<String> texts = [];

  @override
  Widget build(BuildContext context) {


    print(context.read<FamilySheetForm1Bloc>().state.catalogDepartmentSelected.id);

    if(context.read<FamilySheetForm1Bloc>().state.catalogDepartmentSelected.id == 1){
      
      setState(() {
        texts = listaDatos[0].values.toList();
      });

    }
    if(context.read<FamilySheetForm1Bloc>().state.catalogDepartmentSelected.id == 2){
      
      setState(() {
        texts = listaDatos[1].values.toList();
      });

    }
    if(context.read<FamilySheetForm1Bloc>().state.catalogDepartmentSelected.id == 3){
      
      setState(() {
        texts = listaDatos[2].values.toList();
      });

    }

    return Scaffold(
      appBar: CustomAppBar(
        onBackPressed: () => GoRouter.of(context).go('/home'),
        title: 'Ficha Familia',
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
            SizedBox(
              width: 770,
              child: CustomCardFamilyView(
                texts: texts
              ),
            ),
          ],
        ),
      ),
    );
  }
}
