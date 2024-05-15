import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet_form1/family_sheet_form1_bloc.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_app_bar.dart';
import 'package:flutter_boiler/presentation/screens/family_sheet/widgets/custom_select_widget.dart';
import 'package:flutter_boiler/presentation/widgets/custom_text_form_fild.dart';
import 'package:go_router/go_router.dart';

class FamilySheetForm1 extends StatefulWidget {
  static const String path = '/family-sheet';
  static const String pathName = 'family-sheet';

  const FamilySheetForm1({Key? key}) : super(key: key);

  @override
  State<FamilySheetForm1> createState() => _FamilySheetForm1State();
}

class _FamilySheetForm1State extends State<FamilySheetForm1> {
  @override
  void initState() {
    super.initState();

    context.read<FamilySheetForm1Bloc>().add(LoadCatalogDepartmentEvent());
  }

  @override
  Widget build(BuildContext context) {
    return const FamilySheetForm1View();
  }
}

class FamilySheetForm1View extends StatelessWidget {
  const FamilySheetForm1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Ficha familiar / Identificacion de la familia',
        onBackPressed: () => GoRouter.of(context).go('/home'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: CostomTextFormFild(
                enabled: false,
                hint: 'Latitud y longitud ( 34.123456, -118.123456 )',
                prefixIcon: Icons.location_on,
                suffixIcon: Icons.block,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: CostomTextFormFild(
                hint: 'Direccion',
                prefixIcon: Icons.location_city,
                onChanged: (value) {},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> departmentOptions = [
                          const OptionCatalogModel(
                              id: 0, value: 'Departamento ubicación'),
                          ...state.catalogDepartment.map((department) =>
                              OptionCatalogModel(
                                  id: department.idDepartamento,
                                  value: department.nombre))
                        ];

                        return CustomSelectWidget(
                          selectedOption: state.catalogDepartmentSelected ==
                                  const OptionCatalogModel.empty()
                              ? departmentOptions[0]
                              : state.catalogDepartmentSelected,
                          options: departmentOptions,
                          initialValue: 0,
                          onChanged: (value) {
                            context
                                .read<FamilySheetForm1Bloc>()
                                .add(LoadCatalogMunicipalityEvent(value));

                            final OptionCatalogModel optionSelected =
                                departmentOptions.firstWhere(
                                    (element) => element.id == value);

                            context
                                .read<FamilySheetForm1Bloc>()
                                .add(ChangeDepartmentEvent(optionSelected));
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> municipalityOptions = [
                          const OptionCatalogModel(
                              id: 0, value: 'Municipio ubicación'),
                          ...state.catalogMunicipality.map((municipality) =>
                              OptionCatalogModel(
                                  id: municipality.idMunicipio,
                                  value: municipality.nombre))
                        ];

                        return CustomSelectWidget(
                          selectedOption: state.catalogMunicipalitySelected ==
                                  const OptionCatalogModel.empty()
                              ? municipalityOptions[0]
                              : state.catalogMunicipalitySelected,
                          options: municipalityOptions,
                          initialValue: 0,
                          onChanged: (value) {
                            final OptionCatalogModel optionSelected =
                                municipalityOptions.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                ChangeMunicipalityForm1Event(optionSelected));

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogPopulatedPlaceEvent(
                                    state.catalogDepartmentSelected.id,
                                    value,
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
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> optionSelected = [
                          const OptionCatalogModel(
                              id: 0, value: 'Lugar poblado ubicación'),
                          ...state.catalogPopulatedPlace.map((populatedPlace) =>
                              OptionCatalogModel(
                                  id: populatedPlace.idLp,
                                  value: populatedPlace.nombre))
                        ];

                        return CustomSelectWidget(
                          // options: const ['Area de salud', 'Managua', 'León'],
                          selectedOption: state.catalogPopulatedPlaceSelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogPopulatedPlaceSelected,
                          initialValue: 0,
                          options: optionSelected,
                          onChanged: (value) {
                            final OptionCatalogModel optionSelectedLPD =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                  ChangePopulatedPlaceForm1Event(
                                      optionSelectedLPD),
                                );

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogHealthAreaEvent(
                                    state.catalogDepartmentSelected.id,
                                    state.catalogMunicipalitySelected.id,
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> optionSelected = [
                          const OptionCatalogModel(
                              id: 0, value: 'Area de salud'),
                          ...state.catalogHealthArea.map((healthArea) =>
                              OptionCatalogModel(
                                  id: healthArea.idAs,
                                  value: healthArea.nombre))
                        ];

                        return CustomSelectWidget(
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogHealthAreaSelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogHealthAreaSelected,
                          onChanged: (value) {
                            // ignore: avoid_print
                            print('Selected option: $value');
                            final OptionCatalogModel optionSelectedLPD =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                  ChangeHealthAreaForm1Event(optionSelectedLPD),
                                );

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogHealthAreaByDistrictEvent(
                                      value,
                                      state.catalogMunicipalitySelected.id,
                                      state.catalogDepartmentSelected.id),
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
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> optionSelected = [
                          const OptionCatalogModel(
                              id: 0, value: 'Distrito de salud'),
                          ...state.catalogDistrictHealth.map((districtHealth) =>
                              OptionCatalogModel(
                                  id: districtHealth.idDs,
                                  value: districtHealth.nombre))
                        ];

                        return CustomSelectWidget(
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogDistrictHealthSelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogDistrictHealthSelected,
                          onChanged: (value) {
                            // ignore: avoid_print

                            final OptionCatalogModel optionSelectedLPD =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                  ChangeHealthAreaByDistrictForm1Event(
                                      optionSelectedLPD),
                                );

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogHealthAreaByServiceEvent(
                                    state.catalogHealthAreaSelected.id,
                                    // id_ds
                                    value,
                                    state.catalogDepartmentSelected.id,
                                    state.catalogMunicipalitySelected.id,
                                  ),
                                );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> optionSelected = [
                          const OptionCatalogModel(
                              id: 0, value: 'Descripcion del servicio'),
                          ...state.catalogServiceDescription.map(
                              (serviceDescription) => OptionCatalogModel(
                                  id: serviceDescription.idDs,
                                  value: serviceDescription.nombre))
                        ];

                        return CustomSelectWidget(
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption:
                              state.catalogServiceDescriptionSelected ==
                                      const OptionCatalogModel.empty()
                                  ? optionSelected[0]
                                  : state.catalogServiceDescriptionSelected,
                          onChanged: (value) {
                            // ignore: avoid_print

                            final OptionCatalogModel optionSelectedLPD =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                  ChangeHealthAreaByServiceForm1Event(
                                      optionSelectedLPD),
                                );

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogHealthAreaByTerritoryEvent(
                                    state.catalogHealthAreaSelected.id,
                                    state.catalogServiceDescriptionSelected.id,
                                    value,
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
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        List<OptionCatalogModel> optionSelected = [
                          const OptionCatalogModel(id: 0, value: 'Territorio'),
                          ...state.catalogTerritory.map((territory) =>
                              OptionCatalogModel(
                                  id: territory.idTerritorio,
                                  value: territory.descripcion))
                        ];

                        return CustomSelectWidget(
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogTerritorySelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogTerritorySelected,
                          onChanged: (value) {
                            // ignore: avoid_print

                            final OptionCatalogModel optionSelectedTerritoy =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context.read<FamilySheetForm1Bloc>().add(
                                ChangeHealthAreaByTerritoryForm1Event(
                                    optionSelectedTerritoy));

                            // context.read<FamilySheetForm1Bloc>().add(
                            //       LoadCatalogHealthAreaByTerritoryEvent(
                            //           state.catalogHealthAreaSelected.id,
                            //           state.catalogDepartmentSelected.id,
                            //           value),
                            //     );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CustomSelectWidget(
                      options: List<OptionCatalogModel>.generate(
                          10,
                          (index) =>
                              OptionCatalogModel(id: index, value: 'Sector')),
                      initialValue: 0,
                      selectedOption:
                          const OptionCatalogModel(id: 0, value: 'Sector'),
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
                    child: CustomSelectWidget(
                      options: List<OptionCatalogModel>.generate(
                          10,
                          (index) => OptionCatalogModel(
                              id: index, value: 'Centro comunitario')),
                      initialValue: 0,
                      selectedOption: const OptionCatalogModel(
                          id: 0, value: 'Centro comunitario'),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espacio entre los inputs
                  Expanded(
                    child: CustomSelectWidget(
                      options: List<OptionCatalogModel>.generate(
                          10,
                          (index) => OptionCatalogModel(
                              id: index, value: 'Comunidad')),
                      initialValue: 0,
                      selectedOption:
                          const OptionCatalogModel(id: 0, value: 'Comunidad'),
                      onChanged: (value) {
                        // ignore: avoid_print
                        print('Selected option: $value');
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.supervised_user_circle_rounded,
                    size: 40, color: Color.fromARGB(255, 10, 91, 197)),
                SizedBox(width: 8),
                Text(
                  'Persona que visita',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'CUI',
                      prefixIcon: Icons.person,
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
                    child: CostomTextFormFild(
                      hint: 'Nombres',
                      prefixIcon: Icons.person,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CostomTextFormFild(
                      hint: 'Apellidos',
                      prefixIcon: Icons.person,
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
