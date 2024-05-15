import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_district_health.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area_by_region.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_municipality.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_populated_place.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_service_description.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_territory.dart';
import 'package:flutter_boiler/domain/repository/catalog/catalog_repository.dart';

part 'family_sheet_form1_event.dart';
part 'family_sheet_form1_state.dart';

class FamilySheetForm1Bloc
    extends Bloc<FamilySheetForm1Event, FamilySheetForm1State> {
  FamilySheetForm1Bloc({
    required this.catalogRepository,
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
  }

  CatalogRepository catalogRepository;

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
}
