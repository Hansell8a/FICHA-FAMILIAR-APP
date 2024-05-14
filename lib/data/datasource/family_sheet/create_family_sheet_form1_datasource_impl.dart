import 'package:dio/dio.dart';
import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/data/models/family_sheet/form1/create_model_sheet_form1_request.dart';
import 'package:flutter_boiler/data/models/family_sheet/form1/create_model_sheet_form1_response.dart';
import 'package:flutter_boiler/domain/datasource/family_sheet/create_family_sheet_form1_datasource.dart';
import 'package:flutter_boiler/utils/enums/type_request.dart';
import 'package:flutter_boiler/utils/http_helpers.dart';
import 'package:flutter_boiler/utils/user_token_helpers.dart';

class FamilySheetForm1DataSourceImpl
    extends CreateFamilySheetForm1SheetDataSource {
  /// Class used to implement http requests and handle json response
  FamilySheetForm1DataSourceImpl([Dio? dio]) {
    this.dio = dio ?? this.dio;
  }

  /// This is the dio instance that will be used to make HTTP requests
  late Dio dio = serviceLocator<Dio>();

  @override
  Future<void> createFamilySheetTable(
      CreateModelSheetForm1Request createModelSheetForm1) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();
      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: 'ficha-familiar/unificado',
        typeOfRequests: TypeRequests.post,
        token: token,
        data: createModelSheetForm1.toJson(),
      );

      if (response.statusCode == 200) {
        // ignore: avoid_print
        print('Family sheet created form1');
        CreateModelSheetForm1Response createModelSheetForm1Response = CreateModelSheetForm1Response.fromJson(response.data);
        await UserTokenSharedPreferences.saveValueIdFormFamilySheet(createModelSheetForm1Response.data[0].idFichaFamiliar);
        return;
      } else {
        throw Exception('Error creating family sheet');
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error creating family sheet');
      // ignore: avoid_print
      print(e);
      rethrow;
    }
  }
}
