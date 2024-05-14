import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/config/local_db/connection/sqlite_connection.dart';
import 'package:flutter_boiler/domain/datasource/family_sheet/family_sheet_local_datasource.dart';

class FamilySheetDataSourceImpl implements FamilySheetLocalDatasource {
  final LocalDatabase _localDatabase = serviceLocator<LocalDatabase>();

  @override
  Future<void> createFamilySheetTable(FamilySheetDataFormCompanion familySheetDataForm) async {
    try {

      await _localDatabase.into(_localDatabase.familySheetDataForm).insert(familySheetDataForm);

    } catch (e) {
      rethrow;
    }
  }
}
