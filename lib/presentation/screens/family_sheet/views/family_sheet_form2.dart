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
      const OptionCatalogModel(id: 0, value: 'Vivienda habitada'),
      const OptionCatalogModel(id: 1, value: 'Si'),
      const OptionCatalogModel(id: 2, value: 'No'),
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
                      isRequired: true,
                      title: "Vivienda habitada",
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'Vivienda habitada'),
                      options: optionsViviendaHabitada,
                      initialValue: 0,
                      onChanged: (value) {
                        // ignore: avoid_print
                        context.read<FamilySheetBloc>().add(
                              ChangeHousingInhabitedEvent(
                                optionsViviendaHabitada.firstWhere(
                                  (element) => element.id == value,
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetBloc, FamilySheetState>(
                      builder: (context, state) {
                        List<OptionCatalogModel> options = [
                          const OptionCatalogModel(
                              id: 0, value: 'La vivienda tiene'),
                          ...state.catalogTenancyHousing.map((e) =>
                              OptionCatalogModel(
                                  id: e.idTenenciaVivienda,
                                  value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          title: "La vivienda que ocupa es",
                          options: options,
                          initialValue: 0,
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'La vivienda que ocupa es'),
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeHousingOccupiedEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
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
                          const OptionCatalogModel(
                              id: 0, value: 'Vivienda habitada'),
                          ...state.catalog.map((housingStatus) =>
                              OptionCatalogModel(
                                  id: housingStatus.idTipoVivienda,
                                  value: housingStatus.descripcion))
                        ];

                        return CustomSelectWidget(
                          title: "Tipo de vivienda",
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Tipo de vivienda'),
                          options: options,
                          initialValue: 0,
                          onChanged: (value) {
                            context.read().add(
                                  ChangeTypeHousingEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
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
                          const OptionCatalogModel(
                              id: 0, value: 'Material de piso'),
                          ...state.catalogFloorMaterial.map((neighborhood) =>
                              OptionCatalogModel(
                                  id: neighborhood.idMaterialPiso,
                                  value: neighborhood.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          title: "Material de piso",
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Material de piso'),
                          initialValue: 0,
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeNeighborhoodEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
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
                          const OptionCatalogModel(
                              id: 0, value: 'Tipo de servicio sanitario'),
                          ...state.catalogSanitaryService.map((housingType) =>
                              OptionCatalogModel(
                                  id: housingType.idTipoServicioSanitario,
                                  value: housingType.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          title: "Tipo de servicio sanitario",
                          selectedOption: const OptionCatalogModel(id: 0, value: 'Tipo de servicio sanitario'),
                          onChanged: (value) {
                            final OptionCatalogModel selectedOption = options.firstWhere((element) => element.id == value);
                            context.read<FamilySheetBloc>().add(ChangeSanitaryEvent(selectedOption));
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
                          const OptionCatalogModel(
                              id: 0, value: 'Agua consumo'),
                          ...state.catalogWaterConsumption.map((wallMaterial) =>
                              OptionCatalogModel(
                                  id: wallMaterial.idAbastecimientoAgua,
                                  value: wallMaterial.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          title: "Agua consumo",
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Agua consumo'),
                          initialValue: 0,
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeWaterConsumeEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
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
                          const OptionCatalogModel(
                              id: 0, value: 'El sanitario es'),
                          ...state.catalogHealthServiceUse.map((wallMaterial) =>
                              OptionCatalogModel(
                                  id: wallMaterial.idUsoServicioSanitario,
                                  value: wallMaterial.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          title: "El sanitario es",
                          selectedOption: state.typeHealthServiceUse ==
                                  const OptionCatalogModel.empty()
                              ? options[0]
                              : state.typeHealthServiceUse,
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                            final selectedOption = options.firstWhere(
                              (element) => element.id == value,
                            );

                            context.read<FamilySheetBloc>().add(
                                  ChangeTypeHealthServiceUseEvent(
                                      selectedOption),
                                );
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
                      const OptionCatalogModel(
                          id: 0, value: 'Agua residuales / Aguas servidas'),
                      ...state.catalogWasteWater.map((e) => OptionCatalogModel(
                          id: e.idTratamientoAguaResidual,
                          value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      options: options,
                      initialValue: 0,
                      title: "Agua residuales / Aguas servidas",
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'Agua residuales / Aguas servidas'),
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeWasteWaterEvent(
                                options.firstWhere(
                                  (element) => element.id == value,
                                ),
                              ),
                            );
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
                      const OptionCatalogModel(
                          id: 0, value: 'Tratamiento de consumo de la basura'),
                      ...state.catalogGarbageTreatment.map((e) =>
                          OptionCatalogModel(
                              id: e.idTratamientoBasura, value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      options: options,
                      initialValue: 0,
                      title: "Tratamiento de consumo de la basura",
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'Tratamiento de consumo de la basura'),
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeGarbageTreatmentEvent(
                                options.firstWhere(
                                  (element) => element.id == value,
                                ),
                              ),
                            );
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
                      const OptionCatalogModel(
                          id: 0, value: 'La vivienda tiene'),
                      ...state.catalogHousingEquipment.map((e) =>
                          OptionCatalogModel(
                              id: e.idEquipamientoVivienda,
                              value: e.descripcion))
                    ];

                    return CustomSelectWidget(
                      // Mover 2
                      options: options,
                      initialValue: 0,
                      title: "La vivienda tiene",
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'La vivienda tiene'),
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeHousingHasEvent(
                                options.firstWhere(
                                  (element) => element.id == value,
                                ),
                              ),
                            );
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
                          const OptionCatalogModel(
                              id: 0, value: 'Fuente de combustible cocinar'),
                          ...state.cataloKitchenFountain.map((e) =>
                              OptionCatalogModel(
                                  id: e.idFuenteCocina, value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          title: "Fuente de combustible cocinar",
                          initialValue: 0,
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Fuente de combustible cocinar'),
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeFuelSourceEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
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
                          const OptionCatalogModel(
                              id: 0, value: 'Ubicación de la cocina'),
                          ...state.catalogKitchenLocation.map((e) =>
                              OptionCatalogModel(
                                  id: e.idUbicacionCocina,
                                  value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          initialValue: 0,
                          title: "Ubicación de la cocina",
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Ubicación de la cocina'),
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeKitchenLocationEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
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
                          const OptionCatalogModel(
                              id: 0, value: 'Tipo de cocina'),
                          ...state.catalogKitchenType.map((e) =>
                              OptionCatalogModel(
                                  id: e.idTipoCocina, value: e.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: options,
                          title: "Tipo de cocina",
                          initialValue: 0,
                          selectedOption: const OptionCatalogModel(
                              id: 0, value: 'Tipo de cocina'),
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeKitchenTypeEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Numero de familia que vive',
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeNumberFamiliesEvent(value as int),
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
                          const OptionCatalogModel(
                              id: 0, value: 'Recp con agua reposada'),
                          const OptionCatalogModel(id: 1, value: 'SI'),
                          const OptionCatalogModel(id: 2, value: 'NO'),
                        ];

                        return CustomSelectWidget(
                          selectedOption: options[0],
                          title: "Recp con agua reposada",
                          options: options,
                          initialValue: 0,
                          onChanged: (value) {
                            context.read<FamilySheetBloc>().add(
                                  ChangeRestedWaterEvent(
                                    options.firstWhere(
                                      (element) => element.id == value,
                                    ),
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'No de personas que viven',
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeNumberPeopleEvent(value as int),
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
                    child: CostomTextFormFild(
                      hint: 'Cantidad de dormitorios',
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeNumberBedroomsEvent(value as int),
                            );
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Cantidad de cuartos',
                      onChanged: (value) {
                        context.read<FamilySheetBloc>().add(
                              ChangeNumberRoomsEvent(value as int),
                            );
                      },
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
