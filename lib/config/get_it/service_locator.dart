import 'package:dio/dio.dart';
import 'package:flutter_boiler/config/dio/dio_config.dart';
import 'package:flutter_boiler/data/datasource/catalog/catalog_datasource_impl.dart';
import 'package:flutter_boiler/data/repository/catalog/catalog_repository_impl.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet/family_sheet_bloc.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet_form1/family_sheet_form1_bloc.dart';
import 'package:get_it/get_it.dart';

/// Variable used to create a general instance of get it,
/// allowing it to be accessed from any side of the application
final serviceLocator = GetIt.instance;

/// Method used to define all the connections that the get it instance manipulates
void setUpServiceLocator() {
  
  serviceLocator.registerFactory<FamilySheetBloc>(
    () => FamilySheetBloc(
      catalogRepository: CatalogRepositoryImpl(
        catalogDataSource: CatalogDatasourceImpl(),
      ),
    ),
  );

  serviceLocator.registerFactory<FamilySheetForm1Bloc>(
    () => FamilySheetForm1Bloc(
      catalogRepository: CatalogRepositoryImpl(
        catalogDataSource: CatalogDatasourceImpl(),
      ),
    ),
  );

  serviceLocator.registerSingleton<Dio>(DioConfig.dio);
}
