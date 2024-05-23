import 'package:flutter_boiler/config/local_db/connection/sqlite_connection.dart';
import 'package:flutter_boiler/domain/datasource/family_sheet/family_sheet_local_datasource.dart';

import '../../../domain/repository/family_sheet/family_sheet_local_repository.dart';

class FamilySheetLocalRepositoryImpl extends FamilySheetLocalRepository {
  final FamilySheetLocalDatasource familySheetLocalDatasource;

  FamilySheetLocalRepositoryImpl(this.familySheetLocalDatasource);

  @override
  Future<void> createFamilySheetTable(
      FamilySheetDataFormCompanion familySheetDataForm) async {
    try {
      await familySheetLocalDatasource
          .createFamilySheetTable(familySheetDataForm);
    } catch (e) {
      rethrow;
    }
  }
}

class FamilySheetLocalRepository {}
