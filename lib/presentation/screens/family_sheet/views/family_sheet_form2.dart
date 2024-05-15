import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet/family_sheet_bloc.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_app_bar.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_select_widget.dart';
import 'package:flutter_boiler/presentation/widgets/custom_text_form_fild.dart';
import 'package:go_router/go_router.dart';

class FamilySheetForm2Screen extends StatelessWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheetForm2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: serviceLocator<FamilySheetBloc>()
        ..add(
          const FamilySheetTypeHousingEvent(),
        ),
      child: const FamilySheetForm2View(),
    );
  }
}

class FamilySheetForm2View extends StatelessWidget {
  const FamilySheetForm2View({super.key});

  @override
  Widget build(BuildContext context) {
    List<OptionCatalogModel> optionsViviendaHabitada = [
      OptionCatalogModel(id: 0, value: 'Vivienda habitada'),
      OptionCatalogModel(id: 1, value: 'Si'),
      OptionCatalogModel(id: 2, value: 'No'),
    ];

    List<OptionCatalogModel> optionsTipoVivienda = [
      OptionCatalogModel(id: 0, value: 'La vivienda que ocupa es'),
      OptionCatalogModel(id: 1, value: 'Casa'),
      OptionCatalogModel(id: 2, value: 'Departamento'),
      OptionCatalogModel(id: 3, value: 'Otro'),
    ];

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
                    child: CustomSelectWidget(
                      selectedOption:
                          OptionCatalogModel(id: 0, value: 'Vivienda habitada'),
                      options: optionsViviendaHabitada,
                      initialValue: 0,
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CustomSelectWidget(
                      options: optionsTipoVivienda,
                      selectedOption: OptionCatalogModel(
                          id: 0, value: 'La vivienda que ocupa es'),
                      initialValue: 0,
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(id: 0, value: 'Vivienda habitada'),
                          ...state.catalog.map((housingStatus) =>
                              OptionCatalogModel(
                                  id: housingStatus.idTipoVivienda,
                                  value: housingStatus.descripcion))
                        ];

                        return CustomSelectWidget(
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Tipo de vivienda'),
                          options: options,
                          initialValue: 0,
                          onChanged: (value) {
                            // context.read<FamilySheetBloc>().add(
                            //       UpdatedFamilySheetEvent(value),
                            //     );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  // Expanded(
                  //   child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                  //     builder: (context, state) {
                  //       List<OptionCatalogModel> options = [
                  //         OptionCatalogModel(id: 0, value: 'Municipio ubicación'),
                  //         ...state.catalogMunicipality.map((municipality) =>
                  //             OptionCatalogModel(id: municipality.idMunicipio,
                  //                 value: municipality.nombre))
                  //       ];

                  //       return CustomSelectWidget(
                  //         options: options,
                  //         selectedOption: OptionCatalogModel(id: 0, value: 'Municipio ubicación'),
                  //         initialValue: 0,
                  //         onChanged: (value) {
                  //           // ignore: avoid_print
                  //           print('Selected option: $value');
                  //         },
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(id: 0, value: 'Barrio ubicación'),
                          ...state.catalogFloorMaterial.map((neighborhood) =>
                              OptionCatalogModel(
                                  id: neighborhood.idMaterialPiso,
                                  value: neighborhood.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Barrio ubicación'),
                          initialValue: 0,
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(
                              id: 0, value: 'Tipo de servicio sanitario'),
                          ...state.catalogSanitaryService.map((housingType) =>
                              OptionCatalogModel(
                                  id: housingType.idTipoServicioSanitario,
                                  value: housingType.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Tipo de servicio sanitario'),
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(id: 0, value: 'Agua consumo'),
                          ...state.catalogWaterConsumption.map((wallMaterial) =>
                              OptionCatalogModel(
                                  id: wallMaterial.idAbastecimientoAgua,
                                  value: wallMaterial.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          selectedOption:
                              OptionCatalogModel(id: 0, value: 'Agua consumo'),
                          initialValue: 0,
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(id: 0, value: 'El sanitario es'),
                          ...state.catalogHealthServiceUse.map((wallMaterial) =>
                              OptionCatalogModel(
                                  id: wallMaterial.idUsoServicioSanitario,
                                  value: wallMaterial.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'El sanitario es'),
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Expanded(
                child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                  builder: (context, state) {
                    List<OptionCatalogModel> options = [
                      OptionCatalogModel(
                          id: 0, value: 'Agua residuales / Aguas servidas'),
                      ...state.catalogWasteWater.map((e) => OptionCatalogModel(
                          id: e.idTratamientoAguaResidual,
                          value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      options: options,
                      initialValue: 0,
                      selectedOption: OptionCatalogModel(
                          id: 0, value: 'Agua residuales / Aguas servidas'),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Expanded(
                child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                  builder: (context, state) {
                    List<OptionCatalogModel> options = [
                      OptionCatalogModel(
                          id: 0, value: 'Tratamiento de consumo de la basura'),
                      ...state.catalogGarbageTreatment.map((e) =>
                          OptionCatalogModel(
                              id: e.idTratamientoBasura, value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      options: options,
                      initialValue: 0,
                      selectedOption: OptionCatalogModel(
                          id: 0, value: 'Tratamiento de consumo de la basura'),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Expanded(
                child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                  builder: (context, state) {
                    List<OptionCatalogModel> options = [
                      OptionCatalogModel(id: 0, value: 'La vivienda tiene'),
                      ...state.catalogTenancyHousing.map((e) =>
                          OptionCatalogModel(
                              id: e.idTenenciaVivienda, value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      options: options,
                      initialValue: 0,
                      selectedOption:
                          OptionCatalogModel(id: 0, value: 'La vivienda tiene'),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(
                              id: 0, value: 'Fuente de combustible cocinar'),
                          ...state.cataloKitchenFountain.map((e) =>
                              OptionCatalogModel(
                                  id: e.idFuenteCocina, value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Fuente de combustible cocinar'),
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(
                              id: 0, value: 'Ubicación de la cocina'),
                          ...state.catalogKitchenLocation.map((e) =>
                              OptionCatalogModel(
                                  id: e.idUbicacionCocina,
                                  value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Ubicación de la cocina'),
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          OptionCatalogModel(id: 0, value: 'Tipo de cocina'),
                          ...state.catalogKitchenType.map((e) =>
                              OptionCatalogModel(
                                  id: e.idTipoCocina, value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          selectedOption: OptionCatalogModel(
                              id: 0, value: 'Tipo de cocina'),
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Numero de familia que vive',
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: CustomSelectWidget(
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'Recp con agua reposada'),
                      // Boleandos SI y NO
                      options: const [
                        OptionCatalogModel(
                            id: 1, value: 'SI'),
                        OptionCatalogModel(id: 2, value: 'NO'),
                      ],
                      initialValue: 0,
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'No de personas que viven',
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
