import 'package:flutter_boiler/config/local_db/connection/sqlite_connection.dart';

abstract class FamilySheetLocalDatasource {
  Future<void> createFamilySheetTable(
      FamilySheetDataFormCompanion familySheetDataForm);
}
