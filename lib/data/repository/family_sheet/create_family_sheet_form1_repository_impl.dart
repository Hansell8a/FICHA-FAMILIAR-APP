import 'package:flutter_boiler/data/models/family_sheet/form1/create_model_sheet_form1_request.dart';
import 'package:flutter_boiler/domain/datasource/family_sheet/create_family_sheet_form1_datasource.dart';
import 'package:flutter_boiler/domain/repository/family_sheet/create_family_sheet_repository_form1.dart';

class FamilySheetForm1RepositoryImpl extends FamilySheetForm1Repository {
  final CreateFamilySheetForm1SheetDataSource createFamilySheetDataSource;

  FamilySheetForm1RepositoryImpl({required this.createFamilySheetDataSource});

  @override
  Future<void> createFamilySheetTable(CreateModelSheetForm1Request createModelSheetForm1) {
    try {
      return createFamilySheetDataSource.createFamilySheetTable(createModelSheetForm1);
    } catch (e) {
      rethrow;
    }
  }
}
