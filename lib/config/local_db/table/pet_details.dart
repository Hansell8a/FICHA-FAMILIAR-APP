import 'package:drift/drift.dart';
import 'package:flutter_boiler/config/local_db/table/family_sheet_form.dart';

// Define la tabla para los detalles de las mascotas
class PetDetails extends Table {

  @override
  String get tableName => 'pet_details';

  IntColumn get id => integer().autoIncrement()();
  // Tipo de mascota
  IntColumn get petTypeId => integer().named('pet_type_id')();
  // Cantida de mascotas
  IntColumn get petCount => integer().named('pet_count')();
  // condición de adecuadas
  BoolColumn get adequateConditions => boolean().named('adequate_conditions')();
  // Vacunado
  BoolColumn get vaccinated => boolean()();
  // vive dentro
  BoolColumn get livesInside => boolean().named('lives_inside')();

  // Añade la columna de clave foránea
  IntColumn get familySheetFormDataId => integer()
      .customConstraint('REFERENCES ${FamilySheetDataForm().tableName}(id)')();
}
