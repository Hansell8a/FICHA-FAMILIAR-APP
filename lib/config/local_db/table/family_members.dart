import 'package:drift/drift.dart';
import 'package:flutter_boiler/config/local_db/table/family.dart';

class FamilyMember extends Table {
  @override
  String get tableName => 'family_member';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get cui => integer()();
  TextColumn get firstName => text().named('first_name')();
  TextColumn get lastName => text().named('last_name')();
  IntColumn get relationship => integer()();

  // Añade la columna de clave foránea
  IntColumn get familyId =>
      integer().customConstraint('REFERENCES ${Family().tableName}(id)')();
}
