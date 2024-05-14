import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/family_sheet.dart';
import 'package:flutter_boiler/presentation/screens/home/widgets/custom_card.dart';
import 'package:flutter_boiler/presentation/screens/home/widgets/custom_card_msg.dart';
import 'package:flutter_boiler/presentation/widgets/custom_text_form_fild.dart';
import 'package:go_router/go_router.dart';

List<Map<String, String>> listaDatos = [
  {
    'No de Ficha': 'No de Ficha 12',
    'Estado': 'Estado Aprobado',
    'No. de Familia': 'No. de Familia 1',
    'No de vivienda': 'No de vivienda 35678',
    'DDRISS': 'DDRISS Guatemala',
    'Distrito': 'Distrito Ciudad de Guatemala',
    'Dirección': 'Dirección 5a. Avenida, Zona 1, Edificio modelo',
  },
  {
    'No de Ficha': 'No de Ficha 23',
    'Estado': 'Estado Rechazado',
    'No. de Familia': 'No. de Familia 2',
    'No de vivienda': 'No de vivienda 56789',
    'DDRISS': 'DDRISS Honduras',
    'Distrito': 'Distrito Tegucigalpa',
    'Dirección': 'Dirección 3ra Calle, Colonia San Carlos, Casa 123',
  },
  {
    'No de Ficha': 'No de Ficha 43',
    'Estado': 'Estado Pendiente',
    'No. de Familia': 'No. de Familia 4',
    'No de vivienda': 'No de vivienda 567890',
    'DDRISS': 'DDRISS Guatemala',
    'Distrito': 'Distrito Ciudad de Guatemala',
    'Dirección': 'Dirección Avenida Principal, Colonia Las Rosas, Casa #432',
  },
];

class FamilySheetView extends StatefulWidget {
  const FamilySheetView({super.key});

  @override
  State<FamilySheetView> createState() => _FamilySheetViewState();
}

class _FamilySheetViewState extends State<FamilySheetView> {
  TextEditingController searchController = TextEditingController();
  TextEditingController searchControllerNoFamily = TextEditingController();

  bool isSearch = false;
  bool isSearch2 = false;

  List<Map<String, String>> filteredData = [];

  void filterData(String value) {
    setState(() {
      if (value.isEmpty) {
        filteredData.clear();
      } else {
        filteredData = listaDatos.where((element) {
          return element.values
              .any((data) => data.toLowerCase().contains(value.toLowerCase()));
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 90,
          ),
          const Text(
            'Ficha familiar',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(0, 75, 173, 1),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: CostomTextFormFild(
              hint: 'Numero de familia',
              prefixIcon: Icons.supervised_user_circle_outlined,
              suffixIcon: Icons.search,
              controller: searchControllerNoFamily,
              onChanged: (value) {
                // ignore: avoid_print
                // filterData(value);
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: CostomTextFormFild(
              hint: 'Numero de ficha',
              prefixIcon: Icons.house_rounded,
              suffixIcon: Icons.search,
              controller: searchController,
              onChanged: (value) {
                // setState(() {
                //   isSearch = value == '123456' ? true : false;
                //   isSearch2 = value == '987654' ? true : false;
                // });
                filterData(value);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          filteredData.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: filteredData.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 770,
                        child: CustomCard(
                          texts: filteredData[index]
                              .values
                              .toList(), // Mostrar los valores del mapa
                        ),
                      );
                    },
                  ),
                )
              : Visibility(
            visible: !isSearch && !isSearch2,
            child: const SizedBox(
              width: 770,
              child: CustomCardMsg(
                texts: [
                  'Realice una búsqueda por número de ficha o número de familia',
                  'para visualizar la información de la ficha familiar',
                ],
              ),
            ),
          ),
          // Visibility(
          //   visible: isSearch,
          //   child: const SizedBox(
          //     width: 770,
          //     child: CustomCard(
          //       texts: [
          //         'No de Ficha: 123456',
          //         'Estado: Aprobado',
          //         'No. de Familia: 789012',
          //         'No de vivienda: 345678',
          //         'DDRISS: Guatemala',
          //         'Distrito: Ciudad de Guatemala',
          //         'Dirección: 5a. Avenida, Zona 1, Edificio XYZ',
          //       ],
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          // Visibility(
          //   visible: isSearch2,
          //   child: const SizedBox(
          //     width: 770,
          //     child: CustomCard(
          //       texts: [
          //         'No de Ficha: 987654',
          //         'Estado: Pendiente',
          //         'No. de Familia: 543210',
          //         'No de vivienda: 876543',
          //         'DDRISS: Quetzaltenango',
          //         'Distrito: Zunil',
          //         'Dirección: 3a. Calle, Zona 2, Lote 15',
          //       ],
          //     ),
          //   ),
          // ),
          
          Visibility(
            visible: !isSearch && !isSearch2,
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: IconButton(
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 300,
                  color: Colors.blue,
                ),
                onPressed: () {
                  // ignore: avoid_print
                  context.go(FamilySheet.path);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
