import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// Tables
import 'package:flutter_boiler/config/local_db/table/family_sheet_form.dart';
import 'package:flutter_boiler/config/local_db/table/family_sheet_form2.dart';
import 'package:flutter_boiler/config/local_db/table/family_sheet_form3.dart';
import 'package:flutter_boiler/config/local_db/table/pet_details.dart';
import 'package:flutter_boiler/config/local_db/table/family.dart';
import 'package:flutter_boiler/config/local_db/table/family_members.dart';

part 'sqlite_connection.g.dart';

@DriftDatabase(tables: [
  FamilySheetDataForm,
  FamilySheetDataForm2,
  FamilySheetDataForm3,
  PetDetails,
  Family,
  FamilyMember
])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'ficha_familiar.db'));
    return NativeDatabase(file);
  });
}
