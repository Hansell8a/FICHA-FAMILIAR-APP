import 'package:drift/drift.dart';

class FamilySheetDataForm extends Table {

  @override
  String get tableName => 'family_sheet_data_form';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get latitude => text()();
  TextColumn get longitude => text()();
  TextColumn get address => text()();
  // Departamento
  IntColumn get departmentLocation => integer().named('department_location')();
  // Municipio
  IntColumn get municipalityLocation => integer().named('municipality_location')();
  // Lugar poblado
  IntColumn get populatedPlace => integer().named('populated_place')();
  // Area de salud
  IntColumn get healthArea => integer().named('health_area')();
  // Distrito de salud
  IntColumn get healthDistrict => integer().named('health_district')();
  // Descripcion del servicio
  IntColumn get serviceDescription => integer().named('service_description')();
  // Territorio
  IntColumn get territory => integer()();
  // Sector
  IntColumn get sector => integer()();
  // Centro comunitario
  IntColumn get communityCenter => integer().named('community_center')();
  // Comunidad
  IntColumn get community => integer()();

  // CUI
  IntColumn get cui => integer()();
  // Nombre
  TextColumn get firstName => text().named('first_name')();
  // Apellido
  TextColumn get lastName => text().named('last_name')();
}
