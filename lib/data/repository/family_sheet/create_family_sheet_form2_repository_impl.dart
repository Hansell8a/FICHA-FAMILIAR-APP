import 'package:flutter_boiler/data/models/family_sheet/create_model_sheet_form2_request.dart';
import 'package:flutter_boiler/domain/datasource/family_sheet/create_family_sheet_form2_datasource.dart';
import 'package:flutter_boiler/domain/repository/family_sheet/create_family_sheet_repository_form2.dart';

class FamilySheetForm2RepositoryImpl extends FamilySheetForm2Repository {
  final CreateFamilySheetForm2SheetDataSource createFamilySheetDataSource;

  FamilySheetForm2RepositoryImpl({required this.createFamilySheetDataSource});

  @override
  Future<void> createFamilySheetTable(CreateModelSheetForm2Request createModelSheetForm2) {
    try {
      return createFamilySheetDataSource.createFamilySheetTable(createModelSheetForm2);
    } catch (e) {
      rethrow;
    }
  }
}
