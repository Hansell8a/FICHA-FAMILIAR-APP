import 'package:drift/drift.dart';
import 'family_sheet_form.dart'; // Importa la primera tabla

class FamilySheetDataForm2 extends Table {
  @override
  String get tableName => 'family_sheet_data_form2';

  IntColumn get id => integer().autoIncrement()();
  // Vivienda habitada
  TextColumn get housingStatus => text().named('housing_status')();
  // Tipo de vivienda
  TextColumn get homeOwnership => text().named('home_ownership')();
  // Tipo de vivienda
  TextColumn get housingType => text().named('housing_type')();
  // Material de la pared
  TextColumn get wallMaterial => text().named('wall_material')();
  // Material del piso
  TextColumn get floorMaterial => text().named('floor_material')();
  // tipo de servicio sanitario
  TextColumn get sanitaryServiceType => text().named('sanitary_service_type')();
  // Tipo de agua // Agua consumo
  TextColumn get waterConsumption => text().named('water_consumption')();
  // El sanitario es
  TextColumn get toiletType => text().named('toilet_type')();
  // Tipo de desague
  TextColumn get wasteWater => text().named('waste_water')();
  // Tratamiento de basura
  TextColumn get garbageTreatment => text().named('garbage_treatment')();
  // Estado de la tenencia / La vivienda tiene
  TextColumn get tenancyStatus => text().named('tenancy_status')();
  // Tipo de combustible de la cocina
  TextColumn get kitchenFuel => text().named('kitchen_fuel')();
  // Ubicación de la cocina
  TextColumn get kitchenLocation => text().named('kitchen_location')();
  // Tipo de cocina
  TextColumn get kitchenType => text().named('kitchen_type')();
  // Número de familias que viven en la vivienda
  IntColumn get familySize => integer().named('family_size')();
  // Recipiente de agua estancada
  TextColumn get stagnantWaterRecipient => text().named('stagnant_water_recipient')();
  // Número de residentes // numero de personas que viven en la vivienda
  IntColumn get numberOfResidents => integer().named('number_of_residents')();

  // Añade la columna de clave foránea
  IntColumn get familySheetFormDataId => integer()
      .customConstraint('REFERENCES ${FamilySheetDataForm().tableName}(id)')();
}
