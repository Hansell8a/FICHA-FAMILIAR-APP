import 'package:flutter_boiler/data/models/family_sheet/create_model_sheet_form2_request.dart';

abstract class CreateFamilySheetForm2SheetDataSource {
  Future<void> createFamilySheetTable(CreateModelSheetForm2Request createModelSheetForm2);
}
