import 'package:drift/drift.dart';
import 'family_sheet_form.dart'; // Importa la primera tabla

class FamilySheetDataForm3 extends Table {
  @override
  String get tableName => 'family_sheet_data_form3';

  IntColumn get id => integer().autoIncrement()();
  // cantidad de cuartos 
  IntColumn get roomCount => integer().named('room_count')();
  // cantidad de dormitorios
  IntColumn get bedroomCount => integer().named('bedroom_count')();

  // Añade la columna de clave foránea
  IntColumn get familySheetFormDataId => integer()
      .customConstraint('REFERENCES ${FamilySheetDataForm().tableName}(id)')();
}
