import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet/family_sheet_bloc.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_select_widget.dart';
import 'package:flutter_boiler/presentation/widgets/custom_text_form_fild.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomModalView extends StatelessWidget {
  final List<String> texts;

  const CustomModalView({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<OptionCatalogModel> optionsVacuado = [
      const OptionCatalogModel(id: 0, value: 'Vacunado'),
      const OptionCatalogModel(id: 1, value: 'Si'),
      const OptionCatalogModel(id: 2, value: 'No'),
    ];

    List<OptionCatalogModel> optionsViveCasa = [
      const OptionCatalogModel(id: 0, value: 'Vive dentro de la casa'),
      const OptionCatalogModel(id: 1, value: 'Si'),
      const OptionCatalogModel(id: 2, value: 'No'),
    ];

    List<OptionCatalogModel> optionsViveCondicionesAdecuadas = [
      const OptionCatalogModel(id: 0, value: 'Condiciónes adecuada'),
      const OptionCatalogModel(id: 1, value: 'Si'),
      const OptionCatalogModel(id: 2, value: 'No'),
    ];

    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.0,
      child: AlertDialog(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Agregar mascota'),
        content: Form(
          key: GlobalKey<FormState>(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocBuilder<FamilySheetBloc, FamilySheetState>(
                builder: (context, state) {
                  List<OptionCatalogModel> options = [
                    OptionCatalogModel(id: 0, value: 'Tipo de animal'),
                    ...state.catalogAnimalType.map((e) => OptionCatalogModel(
                        id: e.idTipoAnimal, value: e.descripcion))
                  ];

                  return CustomSelectWidget(
                    options: options,
                    initialValue: 0,
                    selectedOption: options[0],
                    onChanged: (value) {
                      // ignore: avoid_print
                      print('Selected option: $value');
                    },
                  );
                },
              ),
              CostomTextFormFild(
                hint: 'Cantidad',
                prefixIcon: null,
                onChanged: (value) {},
              ),
              // CostomTextFormFild(
              //   hint: 'Condiciones adecuadas',
              //   prefixIcon: null,
              //   onChanged: (value) {},
              // ),
              CustomSelectWidget(
                options: optionsViveCondicionesAdecuadas,
                initialValue: 0,
                selectedOption: optionsViveCondicionesAdecuadas[0],
                onChanged: (value) {
                  // ignore: avoid_print
                  print('Selected option: $value');
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomSelectWidget(
                      options: optionsVacuado,
                      initialValue: 0,
                      selectedOption: optionsVacuado[0],
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CustomSelectWidget(
                      options: optionsViveCasa,
                      initialValue: 0,
                      selectedOption: optionsViveCasa[0],
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(HexColor("#f77c7b")),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // fontSize
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 20),
                  ),
                ),
                child: const Text(
                  'Cerrar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(HexColor("#676edc")),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(fontSize: 20),
                  ),
                ),
                child: const Text(
                  'Guardar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
