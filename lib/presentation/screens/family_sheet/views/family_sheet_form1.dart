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
    _loadCatalogs();
  }

  Future<void> _loadCatalogs() async {
    await Future.wait([
      context.read<FamilySheetForm1Bloc>().add(LoadCatalogDepartmentEvent()),
      context.read<FamilySheetForm1Bloc>().add(GetCuiNumberEvent()),
      context.read<FamilySheetForm1Bloc>().add(GetFullNameEvent()),
    ] as Iterable<Future>);
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
              child: BlocBuilder<FamilySheetForm1Bloc, FamilySheetForm1State>(
                builder: (context, state) {
                  return CostomTextFormFild(
                    hint: 'Direccion',
                    prefixIcon: Icons.location_city,
                    initialValue: state.address.isEmpty ? "" : state.address,
                    onChanged: (value) {
                      context.read<FamilySheetForm1Bloc>().add(
                            SaveAddressEvent(value),
                          );
                    },
                  );
                },
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
                          isRequired: true,
                          title: 'Departamento',
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
                          isRequired: true,
                          title: 'Municipio',
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
                          isRequired: true,
                          title: 'Lugar poblado',
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
                          isRequired: true,
                          title: 'Area de salud',
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogHealthAreaSelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogHealthAreaSelected,
                          onChanged: (value) {
                            // ignore: avoid_print
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
                          isRequired: true,
                          title: 'Distrito de salud',
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
                                id: serviceDescription.idTs,
                                value: serviceDescription.nombre),
                          )
                        ];

                        return CustomSelectWidget(
                          isRequired: true,
                          title: 'Descripcion del servicio',
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
                          isRequired: true,
                          title: 'Territorio',
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

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogSectorEvent(value),
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
                          const OptionCatalogModel(id: 0, value: 'Sector'),
                          ...state.catalogSector.map((sector) =>
                              OptionCatalogModel(
                                  id: sector.idSector,
                                  value: sector.descripcion))
                        ];

                        return CustomSelectWidget(
                          isRequired: true,
                          title: 'Sector',
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogSectorSelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogSectorSelected,
                          onChanged: (value) {
                            // ignore: avoid_print
                            final OptionCatalogModel communityCenter =
                                optionSelected.firstWhere(
                                    (element) => element.id == value);

                            context
                                .read<FamilySheetForm1Bloc>()
                                .add(ChangeSectorForm1Event(communityCenter));

                            context.read<FamilySheetForm1Bloc>().add(
                              // descripcion del servicio
                              // healthAreaByService
                                  LoadCatalogCommunityCenterEvent(value,
                                      state.catalogDistrictHealthSelected.id,
                                      state.catalogServiceDescriptionSelected.id),
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
                              id: 0, value: 'Centro comunitario'),
                          ...state.catalogCommunityCenter.map(
                              (communityCenter) => OptionCatalogModel(
                                  id: communityCenter.idCc,
                                  value: communityCenter.nombre))
                        ];

                        return CustomSelectWidget(
                          isRequired: true,
                          title: 'Centro comunitario',
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption:
                              state.catalogCommunityCenterSelected ==
                                      const OptionCatalogModel.empty()
                                  ? optionSelected[0]
                                  : state.catalogCommunityCenterSelected,
                          onChanged: (value) {
                            // ignore: avoid_print
                            context.read<FamilySheetForm1Bloc>().add(
                                  ChangeCommunityCenterForm1Event(
                                      optionSelected.firstWhere(
                                          (element) => element.id == value)),
                                );

                            // context.read<FamilySheetForm1Bloc>().add(
                            //       LoadCatalogCommunityCenterEvent(value),
                            //     );

                            context.read<FamilySheetForm1Bloc>().add(
                                  LoadCatalogCommunityEvent(
                                    state.catalogDepartmentSelected.id,
                                    state.catalogMunicipalitySelected.id,
                                    state.catalogPopulatedPlaceSelected.id,
                                    state.catalogHealthAreaSelected.id,
                                    state.catalogDistrictHealthSelected.id,
                                    state.catalogTerritorySelected.id,
                                    value,
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
                          const OptionCatalogModel(id: 0, value: 'Comunidad'),
                          ...state.catalogCommunity.map((community) =>
                              OptionCatalogModel(
                                  id: community.idC, value: community.nombre))
                        ];

                        return CustomSelectWidget(
                          isRequired: true,
                          title: 'Comunidad',
                          options: optionSelected,
                          initialValue: 0,
                          selectedOption: state.catalogComunitySelected ==
                                  const OptionCatalogModel.empty()
                              ? optionSelected[0]
                              : state.catalogComunitySelected,
                          onChanged: (value) {
                            final OptionCatalogModel community = optionSelected
                                .firstWhere((element) => element.id == value);

                            context
                                .read<FamilySheetForm1Bloc>()
                                .add(ChangeCommunityForm1Event(community));
                          },
                        );
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
                    child: BlocBuilder<FamilySheetForm1Bloc,
                        FamilySheetForm1State>(
                      builder: (context, state) {
                        return CostomTextFormFild(
                          hint: 'CUI',
                          prefixIcon: Icons.person,
                          onChanged: (value) {},
                          initialValue: 'CUI: ${state.cuiNumber}',
                          enabled: false,
                          suffixIcon: Icons.block,
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
                        return CostomTextFormFild(
                          hint: '',
                          prefixIcon: Icons.person,
                          initialValue: 'Nombre completo: ${state.fullName}',
                          enabled: false,
                          suffixIcon: Icons.block,
                          onChanged: (value) {},
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
