part of 'family_sheet_bloc.dart';

sealed class FamilySheetEvent extends Equatable {
  const FamilySheetEvent();

  @override
  List<Object> get props => [];
}

class LoadCatalogsEvent extends FamilySheetEvent {}

class FamilySheetTypeHousingEvent extends FamilySheetEvent {
  const FamilySheetTypeHousingEvent();
}

class UpdatedFamilySheetEvent extends FamilySheetEvent {
  const UpdatedFamilySheetEvent(this.housingType);

  final String housingType;

  @override
  List<Object> get props => [housingType];
}

class ChangeMunicipalityEvent extends FamilySheetEvent {
  const ChangeMunicipalityEvent(this.municipality);

  final String municipality;

  @override
  List<Object> get props => [municipality];
}

// typeHealthServiceUse
class ChangeTypeHealthServiceUseEvent extends FamilySheetEvent {
  final OptionCatalogModel typeHealthServiceUse;

  const ChangeTypeHealthServiceUseEvent(this.typeHealthServiceUse);

  @override
  List<Object> get props => [typeHealthServiceUse];
}

/// Eventos para el formulario de la ficha familiar

// Tipo de vivienda
class ChangeTypeHousingEvent extends FamilySheetEvent {
  final OptionCatalogModel typeHousing;

  const ChangeTypeHousingEvent(this.typeHousing);

  @override
  List<Object> get props => [typeHousing];
}

// Barrio y ubicación
class ChangeNeighborhoodEvent extends FamilySheetEvent {
  final OptionCatalogModel neighborhood;

  const ChangeNeighborhoodEvent(this.neighborhood);

  @override
  List<Object> get props => [neighborhood];
}

// Agua consumo
class ChangeWaterConsumeEvent extends FamilySheetEvent {
  final OptionCatalogModel waterConsume;

  const ChangeWaterConsumeEvent(this.waterConsume);

  @override
  List<Object> get props => [waterConsume];
}

// El sanitario es
class ChangeSanitaryEvent extends FamilySheetEvent {
  final OptionCatalogModel sanitary;

  const ChangeSanitaryEvent(this.sanitary);

  @override
  List<Object> get props => [sanitary];
}

// Agua residuales / Aguas servidas
class ChangeWasteWaterEvent extends FamilySheetEvent {
  final OptionCatalogModel wasteWater;

  const ChangeWasteWaterEvent(this.wasteWater);

  @override
  List<Object> get props => [wasteWater];
}

// Tratamiento de consumo de la basura
class ChangeGarbageTreatmentEvent extends FamilySheetEvent {
  final OptionCatalogModel garbageTreatment;

  const ChangeGarbageTreatmentEvent(this.garbageTreatment);

  @override
  List<Object> get props => [garbageTreatment];
}

// La vivienda tieene
class ChangeHousingHasEvent extends FamilySheetEvent {
  final OptionCatalogModel housingHas;

  const ChangeHousingHasEvent(this.housingHas);

  @override
  List<Object> get props => [housingHas];
}

// Fuente de combustible para cocinar
class ChangeFuelSourceEvent extends FamilySheetEvent {
  final OptionCatalogModel fuelSource;

  const ChangeFuelSourceEvent(this.fuelSource);

  @override
  List<Object> get props => [fuelSource];
}

// Ubicacion de la cocina
class ChangeKitchenLocationEvent extends FamilySheetEvent {
  final OptionCatalogModel kitchenLocation;

  const ChangeKitchenLocationEvent(this.kitchenLocation);

  @override
  List<Object> get props => [kitchenLocation];
}

// Tipo de cocina
class ChangeKitchenTypeEvent extends FamilySheetEvent {
  final OptionCatalogModel kitchenType;

  const ChangeKitchenTypeEvent(this.kitchenType);

  @override
  List<Object> get props => [kitchenType];
}

// Agua reposada
class ChangeRestedWaterEvent extends FamilySheetEvent {
  final OptionCatalogModel restedWater;

  const ChangeRestedWaterEvent(this.restedWater);

  @override
  List<Object> get props => [restedWater];
}


class CreateFamilySheetForm2Event extends FamilySheetEvent {
  const CreateFamilySheetForm2Event();
}

// ChangeHousingInhabitedEvent => Vivienda habitada
class ChangeHousingInhabitedEvent extends FamilySheetEvent {
  final OptionCatalogModel housingInhabited;

  const ChangeHousingInhabitedEvent(this.housingInhabited);

  @override
  List<Object> get props => [housingInhabited];
}

// ChangeHousingOccupiedEvent => Vivienda ocupada
class ChangeHousingOccupiedEvent extends FamilySheetEvent {
  final OptionCatalogModel housingOccupied;

  const ChangeHousingOccupiedEvent(this.housingOccupied);

  @override
  List<Object> get props => [housingOccupied];
}

// ChangeHousingEquippedEvent => Vivienda equipada
class ChangeHousingEquippedEvent extends FamilySheetEvent {
  final OptionCatalogModel housingEquipped;

  const ChangeHousingEquippedEvent(this.housingEquipped);

  @override
  List<Object> get props => [housingEquipped];
}

// Numero de familias en la vivienda
class ChangeNumberFamiliesEvent extends FamilySheetEvent {
  final int numberFamiliesLiving;

  const ChangeNumberFamiliesEvent(this.numberFamiliesLiving);

  @override
  List<Object> get props => [numberFamiliesLiving];
}

// Numero de dormitorios
class ChangeNumberBedroomsEvent extends FamilySheetEvent {
  final int numberPersonsLiving;

  const ChangeNumberBedroomsEvent(this.numberPersonsLiving);

  @override
  List<Object> get props => [numberPersonsLiving];
}

// Cantidad de personas
class ChangeNumberPeopleEvent extends FamilySheetEvent {
  final int cantDormitories;

  const ChangeNumberPeopleEvent(this.cantDormitories);

  @override
  List<Object> get props => [cantDormitories];
}

// cantidad de cuartos
class ChangeNumberRoomsEvent extends FamilySheetEvent {
  final int cantRooms;

  const ChangeNumberRoomsEvent(this.cantRooms);

  @override
  List<Object> get props => [cantRooms];
}
