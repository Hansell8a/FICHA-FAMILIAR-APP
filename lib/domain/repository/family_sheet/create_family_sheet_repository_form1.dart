import 'package:flutter_boiler/data/models/family_sheet/form1/create_model_sheet_form1_request.dart';

abstract class FamilySheetForm1Repository {
  Future<void> createFamilySheetTable(CreateModelSheetForm1Request createModelSheetForm1);
}
