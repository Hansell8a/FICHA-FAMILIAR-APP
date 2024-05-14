import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/data/models/family_sheet/create_model_sheet_form2_request.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/domain/entities/catalog_entity.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_animal_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_floor_material.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_garbage_treatment.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_service_use.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_housing_equipment.dart';
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
import 'package:flutter_boiler/domain/repository/family_sheet/create_family_sheet_repository_form2.dart';
import 'package:flutter_boiler/utils/user_token_helpers.dart';

part 'family_sheet_event.dart';
part 'family_sheet_state.dart';

class FamilySheetBloc extends Bloc<FamilySheetEvent, FamilySheetState> {
  FamilySheetBloc(
      {required this.catalogRepository,
      required this.familySheetForm2Repository})
      : super(const FamilySheetState()) {
    on<FamilySheetTypeHousingEvent>(_onFamilySheetTypeHousingEvent);
    on<UpdatedFamilySheetEvent>(_onUpdatedFamilySheetEvent);
    on<ChangeMunicipalityEvent>(_onChangeMunicipalityEvent);

    on<ChangeTypeHealthServiceUseEvent>(_onChangeTypeHealthServiceUseEvent);

    /// Eventos para el formulario de la ficha familiar
    on<ChangeTypeHousingEvent>(_onChangeTypeHousingEvent);
    on<ChangeNeighborhoodEvent>(_onChangeNeighborhoodEvent);
    on<ChangeWaterConsumeEvent>(_onChangeWaterConsumeEvent);
    on<ChangeSanitaryEvent>(_onChangeSanitaryEvent);
    on<ChangeWasteWaterEvent>(_onChangeWasteWaterEvent);
    on<ChangeGarbageTreatmentEvent>(_onChangeGarbageTreatmentEvent);
    on<ChangeHousingHasEvent>(_onChangeHousingHasEvent);
    on<ChangeFuelSourceEvent>(_onChangeFuelSourceEvent);
    on<ChangeKitchenLocationEvent>(_onChangeKitchenLocationEvent);
    on<ChangeKitchenTypeEvent>(_onChangeKitchenTypeEvent);
    on<ChangeRestedWaterEvent>(_onChangeRestedWaterEvent);

    /// Eventos crear ficha familiar
    on<CreateFamilySheetForm2Event>(_onCreateFamilySheetForm2Event);

    on<ChangeHousingInhabitedEvent>(_onChangeHousingInhabitedEvent);

    on<ChangeHousingOccupiedEvent>(_onChangeHousingOccupiedEvent);

    on<ChangeHousingEquippedEvent>(_onChangeHousingEquippedEvent);

    on<ChangeNumberFamiliesEvent>(_onChangeNumberFamiliesEvent);
    on<ChangeNumberBedroomsEvent>(_onChangeNumberBedroomsEvent);
    on<ChangeNumberPeopleEvent>(_onChangeNumberPeopleEvent);
    on<ChangeNumberRoomsEvent>(_onChangeNumberRoomsEvent);
  }

  CatalogRepository catalogRepository;

  final FamilySheetForm2Repository familySheetForm2Repository;

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
        await catalogRepository
            .getCatalogMunicipality(event.municipality as int);
    emit(state.copyWith(catalogMunicipality: catalogMunicipality));
  }

  Future<void> _onChangeTypeHealthServiceUseEvent(
    ChangeTypeHealthServiceUseEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(typeHealthServiceUse: event.typeHealthServiceUse));
  }

  Future<void> _onChangeTypeHousingEvent(
    ChangeTypeHousingEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(typeHousing: event.typeHousing));
  }

  Future<void> _onChangeNeighborhoodEvent(
    ChangeNeighborhoodEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(neighborhood: event.neighborhood));
  }

  Future<void> _onChangeWaterConsumeEvent(
    ChangeWaterConsumeEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(waterConsume: event.waterConsume));
  }

  Future<void> _onChangeSanitaryEvent(
    ChangeSanitaryEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(sanitary: event.sanitary));
  }

  Future<void> _onChangeWasteWaterEvent(
    ChangeWasteWaterEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(wasteWater: event.wasteWater));
  }

  Future<void> _onChangeGarbageTreatmentEvent(
    ChangeGarbageTreatmentEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(garbageTreatment: event.garbageTreatment));
  }

  Future<void> _onChangeHousingHasEvent(
    ChangeHousingHasEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(housingHas: event.housingHas));
  }

  Future<void> _onChangeFuelSourceEvent(
    ChangeFuelSourceEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(fuelSource: event.fuelSource));
  }

  Future<void> _onChangeKitchenLocationEvent(
    ChangeKitchenLocationEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(kitchenLocation: event.kitchenLocation));
  }

  Future<void> _onChangeKitchenTypeEvent(
    ChangeKitchenTypeEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(kitchenType: event.kitchenType));
  }

  Future<void> _onChangeRestedWaterEvent(
    ChangeRestedWaterEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(restedWater: event.restedWater));
  }

  Future<void> _onChangeHousingInhabitedEvent(
    ChangeHousingInhabitedEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(housingInhabited: event.housingInhabited));
  }

  Future<void> _onChangeHousingEquippedEvent(
    ChangeHousingEquippedEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(housingEquipped: event.housingEquipped));
  }

  Future<void> _onChangeNumberFamiliesEvent(
    ChangeNumberFamiliesEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(numberFamiliesLiving: event.numberFamiliesLiving));
  }

  Future<void> _onChangeNumberBedroomsEvent(
    ChangeNumberBedroomsEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(numberPersonsLiving: event.numberPersonsLiving));
  }

  Future<void> _onChangeNumberPeopleEvent(
    ChangeNumberPeopleEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(cantDormitories: event.cantDormitories));
  }

  Future<void> _onChangeNumberRoomsEvent(
    ChangeNumberRoomsEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(cantRooms: event.cantRooms));
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

      final List<CatalogEntityHousingEquipment> catalogHousingEquipment =
          await catalogRepository.getCatalogHousingEquipment();
      emit(state.copyWith(catalogHousingEquipment: catalogHousingEquipment));

      // ignore: avoid_print
      print('Catalogs loaded');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onChangeHousingOccupiedEvent(
    ChangeHousingOccupiedEvent event,
    Emitter<FamilySheetState> emit,
  ) async {
    emit(state.copyWith(housingOccupied: event.housingOccupied));
  }

  Future<void> _onCreateFamilySheetForm2Event(
    CreateFamilySheetForm2Event event,
    Emitter<FamilySheetState> emit,
  ) async {
    try {
      int? familySheetForm1Id = await UserTokenSharedPreferences.getSavedIdFormFamilySheet();

      // ignore: avoid_print
      print('familySheetForm1Id: $familySheetForm1Id');
      // ignore: avoid_print
      print(state.sanitary.value);

      final createModelSheetForm2 = CreateModelSheetForm2Request(
        idFichaFamiliar: 142,
        habitada: state.housingInhabited.id == 1 ? true : false,
        idTenenciaVivienda: state.housingHas.id,
        idTipoVivienda: state.typeHousing.id,

        idMaterialPared: 0,
        idMaterialPiso: state.neighborhood.id,
        idMeterialTecho: 0,
        idUsoServicioSanitario: state.typeHealthServiceUse.id,
        
        idAbastecimientoAgua: state.waterConsume.id,
        
        idTipoServicioSanitario: state.sanitary.id,
        idTratamientoAguaGris: state.wasteWater.id,
        idFuenteCocina: state.fuelSource.id,
        idUbicacionCocina: state.kitchenLocation.id,
        idTipoCocina: state.kitchenType.id,
        recipienteAguaReposada: state.restedWater.id == 1 ? true : false,
        
        totalViviendaFamiliar: state.numberFamiliesLiving,
        totalViviendaPersona: state.numberPersonsLiving,
        totalViviendaCuarto: state.cantRooms,
        totalViviendaDormitorio: state.cantDormitories,

        // tratamientoBasura: state.garbageTreatment.id,
      );

      await familySheetForm2Repository.createFamilySheetTable(createModelSheetForm2);

    } catch (e) {
      // emit(state.copyWith(isCreated: false));
    }
  }
}
