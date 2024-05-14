import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/models/family_sheet/form1/create_model_sheet_form1_request.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_community.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_community_center.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_district_health.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area_by_region.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_municipality.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_populated_place.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_sector.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_service_description.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_territory.dart';
import 'package:flutter_boiler/domain/repository/catalog/catalog_repository.dart';
import 'package:flutter_boiler/domain/repository/family_sheet/create_family_sheet_repository_form1.dart';
import 'package:flutter_boiler/utils/user_token_helpers.dart';

part 'family_sheet_form1_event.dart';
part 'family_sheet_form1_state.dart';

class FamilySheetForm1Bloc
    extends Bloc<FamilySheetForm1Event, FamilySheetForm1State> {
  FamilySheetForm1Bloc({
    required this.catalogRepository,
    required this.familySheetForm1Repository, 
    // required this.familySheetForm2Repository
  }) : super(const FamilySheetForm1State()) {
    on<LoadCatalogDepartmentEvent>(_onLoadCatalogDepartmentEvent);

    on<LoadCatalogMunicipalityEvent>(_onLoadCatalogMunicipalityEvent);

    on<ChangeDepartmentEvent>(_onChangeDepartmentEvent);

    on<ChangeMunicipalityForm1Event>(_onChangeMunicipalityEvent);

    on<LoadCatalogPopulatedPlaceEvent>(_onLoadCatalogPopulatedPlaceEvent);

    on<ChangePopulatedPlaceForm1Event>(_onChangePopulatedPlaceEvent);

    on<LoadCatalogHealthAreaEvent>(_onLoadCatalogHealthAreaEvent);

    on<ChangeHealthAreaForm1Event>(_onChangeHealthAreaEvent);

    on<LoadCatalogHealthAreaByDistrictEvent>(_onLoadCatalogDistrictHealthEvent);

    on<ChangeHealthAreaByDistrictForm1Event>(_onChangeDistrictHealthEvent);

    on<LoadCatalogHealthAreaByServiceEvent>(
        _onLoadCatalogHealthServiceUseEvent);

    on<ChangeHealthAreaByServiceForm1Event>(_onChangeHealthServiceUseEvent);

    on<LoadCatalogHealthAreaByTerritoryEvent>(_onLoadCatalogTerritoryEvent);

    on<ChangeHealthAreaByTerritoryForm1Event>(_onChangeTerritoryEvent);

    on<LoadCatalogSectorEvent>(_onLoadCatalogSectorEvent);

    on<ChangeSectorForm1Event>(_onChangeSectorEvent);

    on<LoadCatalogCommunityCenterEvent>(_onLoadCatalogCommunityCenterEvent);

    on<ChangeCommunityCenterForm1Event>(_onChangeCommunityCenterEvent);

    on<LoadCatalogCommunityEvent>(_onLoadCatalogCommunityEvent);

    on<ChangeCommunityForm1Event>(_onChangeCommunityEvent);

    on<GetCuiNumberEvent>(_onCuiNumberEvent);

    on<GetFullNameEvent>(_onGetFullNameEvent);

    // CreateFamilySheetForm1Event
    on<CreateFamilySheetForm1Event>(_onCreateFamilySheetForm1Event);

    on<SaveAddressEvent>(_onSaveAddressEvent);

    // ValidateFamilySheetForm1Event
    on<ValidateFamilySheetForm1Event>(_onValidateFamilySheetForm1Event);
  }

  CatalogRepository catalogRepository;

  FamilySheetForm1Repository familySheetForm1Repository;

  Future<void> _onLoadCatalogDepartmentEvent(
    LoadCatalogDepartmentEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityDepartment> catalogDepartment =
        await catalogRepository.getCatalogDepartment();
    emit(state.copyWith(catalogDepartment: catalogDepartment));
  }

  Future<void> _onLoadCatalogMunicipalityEvent(
    LoadCatalogMunicipalityEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityMunicipality> catalogMunicipality =
        await catalogRepository.getCatalogMunicipality(event.department);
    emit(state.copyWith(catalogMunicipality: catalogMunicipality));
  }

  Future<void> _onChangeDepartmentEvent(
    ChangeDepartmentEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogDepartmentSelected: event.department));
  }

  Future<void> _onChangeMunicipalityEvent(
    ChangeMunicipalityForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogMunicipalitySelected: event.municipality));
  }

  Future<void> _onLoadCatalogPopulatedPlaceEvent(
    LoadCatalogPopulatedPlaceEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityPopulatedPlace> catalogPopulatedPlace =
        await catalogRepository.getCatalogPopulatedPlace(
            event.department, event.municipality);
    emit(state.copyWith(catalogPopulatedPlace: catalogPopulatedPlace));
  }

  Future<void> _onChangePopulatedPlaceEvent(
    ChangePopulatedPlaceForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogPopulatedPlaceSelected: event.populatedPlace));
  }

  Future<void> _onLoadCatalogHealthAreaEvent(
    LoadCatalogHealthAreaEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityHealthAreaByRegion> catalogHealthArea =
        await catalogRepository.getCatalogHealthAreaByRegion(
            event.region, event.department);
    emit(state.copyWith(catalogHealthArea: catalogHealthArea));
  }

  Future<void> _onChangeHealthAreaEvent(
    ChangeHealthAreaForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogHealthAreaSelected: event.healthArea));
  }

  Future<void> _onLoadCatalogDistrictHealthEvent(
    LoadCatalogHealthAreaByDistrictEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityDistrictHealth> catalogDistrictHealth =
        await catalogRepository.getCatalogHealthAreaByDistrict(
            event.as, event.department, event.municipality);
    emit(state.copyWith(catalogDistrictHealth: catalogDistrictHealth));
  }

  Future<void> _onChangeDistrictHealthEvent(
    ChangeHealthAreaByDistrictForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(
        catalogDistrictHealthSelected: event.healthAreaByDistrict));
  }

  // _onLoadCatalogHealthServiceUseEvent
  Future<void> _onLoadCatalogHealthServiceUseEvent(
    LoadCatalogHealthAreaByServiceEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityServiceDescription> catalogServiceDescription =
        await catalogRepository.getCatalogHealthAreaByService(
            event.as, event.ds, event.department, event.municipality);

    emit(state.copyWith(catalogServiceDescription: catalogServiceDescription));
  }

  Future<void> _onChangeHealthServiceUseEvent(
    ChangeHealthAreaByServiceForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(
        catalogServiceDescriptionSelected: event.healthAreaByService));
  }

  Future<void> _onLoadCatalogTerritoryEvent(
    LoadCatalogHealthAreaByTerritoryEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityTerritory> catalogTerritory =
        await catalogRepository.getCatalogHealthAreaByTerritory(
            event.as, event.ds, event.ts);

    emit(state.copyWith(catalogTerritory: catalogTerritory));
  }

  Future<void> _onChangeTerritoryEvent(
    ChangeHealthAreaByTerritoryForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogTerritorySelected: event.healthAreaByTerritory));
  }

  Future<void> _onLoadCatalogSectorEvent(
    LoadCatalogSectorEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntitySector> catalogSector =
        await catalogRepository.getCatalogSector(event.territory);

    emit(state.copyWith(catalogSector: catalogSector));
  }

  Future<void> _onChangeSectorEvent(
    ChangeSectorForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogSectorSelected: event.sector));
  }

  Future<void> _onLoadCatalogCommunityCenterEvent(
    LoadCatalogCommunityCenterEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityCommunityCenter> catalogCommunityCenter =
        await catalogRepository.getCatalogCommunityCenter(event.ts, event.as, event.ds);

    emit(state.copyWith(catalogCommunityCenter: catalogCommunityCenter));
  }

  Future<void> _onChangeCommunityCenterEvent(
    ChangeCommunityCenterForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogCommunityCenterSelected: event.communityCenter));
  }

  Future<void> _onLoadCatalogCommunityEvent(
    LoadCatalogCommunityEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    final List<CatalogEntityCommunity> catalogCommunity =
        await catalogRepository.getCatalogCommunity(
            event.idDepartamento,
            event.idMunicipio,
            event.idLp,
            event.idAs,
            event.idDs,
            event.idTs,
            event.idCc);

    emit(state.copyWith(catalogCommunity: catalogCommunity));
  }

  Future<void> _onChangeCommunityEvent(
    ChangeCommunityForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(catalogComunitySelected: event.community));
  }

  Future<void> _onCuiNumberEvent(
    GetCuiNumberEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    String? cui = await UserTokenSharedPreferences.getSavedCuiNumber();

    emit(state.copyWith(cuiNumber: cui));
  }

  // _onGetFullNameEvent
  Future<void> _onGetFullNameEvent(
    GetFullNameEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    String? fullName = await UserTokenSharedPreferences.getSavedFullName();

    emit(state.copyWith(fullName: fullName));
  }

  // _onCreateFamilySheetForm1Event
  Future<void> _onCreateFamilySheetForm1Event(
    CreateFamilySheetForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    try {
      final now = DateTime.now();
      final formattedDate = "${now.day}/${now.month}/${now.year}";

      int? userId = await UserTokenSharedPreferences.getSavedUserId();

      final createModelSheettForm1 = CreateModelSheetForm1Request(
        idEstadoFicha: 1,
        idUsuarioSuperviso: userId,
        fechaSupervision: formattedDate,
        latitud: 1,
        longitud: 1,
        direccion: state.address,
        idDepartamento: state.catalogDepartmentSelected.id,
        idMunicipio: state.catalogMunicipalitySelected.id,
        idLugarPoblado: state.catalogPopulatedPlaceSelected.id,
        idAs: state.catalogHealthAreaSelected.id.toString(),
        idDs: state.catalogDistrictHealthSelected.id.toString(),
        idTs: state.catalogServiceDescriptionSelected.id.toString(),
        idCc: state.catalogCommunityCenterSelected.id.toString(),
        idC: state.catalogComunitySelected.id.toString(),
        idTerritorio: state.catalogTerritorySelected.id == 0
            ? null
            : state.catalogTerritorySelected.id,
        idSector: state.catalogSectorSelected.id == 0
            ? null
            : state.catalogSectorSelected.id,
      );

      await familySheetForm1Repository
          .createFamilySheetTable(createModelSheettForm1);
      // emit(state.copyWith(isSuccess: true));
    } catch (e) {
      // emit(state.copyWith(isError: true));
    }
  }

  // _onSaveAddressEvent
  Future<void> _onSaveAddressEvent(
    SaveAddressEvent event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    emit(state.copyWith(address: event.address));
  }

  // _onValidateFamilySheetForm1Event
  Future<void> _onValidateFamilySheetForm1Event(
    ValidateFamilySheetForm1Event event,
    Emitter<FamilySheetForm1State> emit,
  ) async {
    if (state.catalogDepartmentSelected.id == 0 ||
        state.catalogMunicipalitySelected.id == 0 ||
        state.catalogPopulatedPlaceSelected.id == 0 ||
        state.catalogHealthAreaSelected.id == 0 ||
        state.catalogDistrictHealthSelected.id == 0 ||
        state.catalogTerritorySelected.id == 0 ||
        state.catalogSectorSelected.id == 0 ||
        // state.catalogCommunityCenterSelected.id == 0 ||
        // state.catalogComunitySelected.id == 0 ||
        state.address.isEmpty) {
      emit(state.copyWith(isValidForm1: false));
    } else {
      emit(state.copyWith(isValidForm1: true));
    }
  }
}
