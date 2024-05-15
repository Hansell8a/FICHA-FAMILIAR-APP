import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/domain/entities/catalog_entity.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_animal_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_floor_material.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_garbage_treatment.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_service_use.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_fountain.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_location.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_municipality.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_sanitary_service.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_tenancy_housing.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_wall_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_waste_water.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_water_consumption.dart';
import 'package:flutter_boiler/domain/repository/catalog/catalog_repository.dart';

part 'family_sheet_event.dart';
part 'family_sheet_state.dart';

class FamilySheetBloc extends Bloc<FamilySheetEvent, FamilySheetState> {
  FamilySheetBloc({required this.catalogRepository})
      : super(const FamilySheetState()) {
    on<FamilySheetTypeHousingEvent>(_onFamilySheetTypeHousingEvent);
    on<UpdatedFamilySheetEvent>(_onUpdatedFamilySheetEvent);
    on<ChangeMunicipalityEvent>(_onChangeMunicipalityEvent);
  }

  CatalogRepository catalogRepository;

  Future<void> _onUpdatedFamilySheetEvent(
    UpdatedFamilySheetEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(housingType: event.housingType));
  }

  Future<void> _onChangeMunicipalityEvent(
    ChangeMunicipalityEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    final List<CatalogEntityMunicipality> catalogMunicipality =
        await catalogRepository.getCatalogMunicipality(event.municipality as int);
    emit(state.copyWith(catalogMunicipality: catalogMunicipality));
  }

  Future<void> _onFamilySheetTypeHousingEvent(
    FamilySheetTypeHousingEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    try {
      final List<CatalogEntity> catalog = await catalogRepository.getCatalog();
      emit(state.copyWith(catalog: catalog));

      final List<CatalogEntityWallType> catalogWallMaterial =
          await catalogRepository.getCatalogWallMaterial();
      emit(state.copyWith(catalogWallMaterial: catalogWallMaterial));

      final List<CatalogEntityFloorMaterial> catalogFloorMaterial =
          await catalogRepository.getCatalogFloorMaterial();
      emit(state.copyWith(catalogFloorMaterial: catalogFloorMaterial));

      final List<CatalogEntitySanitaryService> catalogSanitaryService =
          await catalogRepository.getCatalogSanitaryService();
      emit(state.copyWith(catalogSanitaryService: catalogSanitaryService));

      final List<CatalogEntityWaterConsumption> catalogWaterConsumption =
          await catalogRepository.getCatalogWaterConsumption();
      emit(state.copyWith(catalogWaterConsumption: catalogWaterConsumption));

      final List<CatalogEntityHealthServiceUse> catalogHealthServiceUse =
          await catalogRepository.getCatalogHealthServiceUse();
      emit(state.copyWith(catalogHealthServiceUse: catalogHealthServiceUse));

      final List<CatalogEntityWasteWater> catalogWasteWater =
          await catalogRepository.getCatalogWasteWater();
      emit(state.copyWith(catalogWasteWater: catalogWasteWater));

      final List<CatalogEntityGarbageTreatment> catalogGarbageTreatment =
          await catalogRepository.getCatalogGarbageTreatment();
      emit(state.copyWith(catalogGarbageTreatment: catalogGarbageTreatment));

      final List<CatalogEntityTenancyHousing> catalogTenancyHousing =
          await catalogRepository.getCatalogTenancyHousing();
      emit(state.copyWith(catalogTenancyHousing: catalogTenancyHousing));

      final List<CatalogEntityKitchenFountain> catalogKitchenFountain =
          await catalogRepository.getCatalogKitchenFountain();

      emit(state.copyWith(cataloKitchenFountain: catalogKitchenFountain));

      final List<CatalogEntityKitchenLocation> catalogKitchenLocation =
          await catalogRepository.getCatalogKitchenLocation();
      emit(state.copyWith(catalogKitchenLocation: catalogKitchenLocation));

      final List<CatalogEntityKitchenType> catalogKitchenType =
          await catalogRepository.getCatalogKitchenType();
      emit(state.copyWith(catalogKitchenType: catalogKitchenType));

      final List<CatalogEntityAnimalType> catalogAnimalType =
          await catalogRepository.getCatalogAnimalType();
      emit(state.copyWith(catalogAnimalType: catalogAnimalType));

      final List<CatalogEntityDepartment> catalogDepartment =
          await catalogRepository.getCatalogDepartment();
      emit(state.copyWith(catalogDepartment: catalogDepartment));

      final List<CatalogEntityMunicipality> catalogMunicipality =
          await catalogRepository.getCatalogMunicipality(0);
      emit(state.copyWith(catalogMunicipality: catalogMunicipality));

      // ignore: avoid_print
      print('Catalogs loaded');
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
