import 'package:dio/dio.dart';
import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/data/models/catalog_model.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_Model_garbage_treatment.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_animal_type.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_department.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_district_health.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_floor_material.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_health_area.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_health_area_by_region.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_health_service_use.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_kitchen_fountain.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_kitchen_location.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_kitchen_type.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_municipality.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_populated_place.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_sanitary_service.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_service_description.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_tenancy_housing.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_territory.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_wall_type.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_waste_water.dart';
import 'package:flutter_boiler/data/models/catalogs/catalog_model_water_consumption.dart';
import 'package:flutter_boiler/domain/datasource/catalog/catalog_datasource.dart';
import 'package:flutter_boiler/domain/entities/catalog_entity.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_animal_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_district_health.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_floor_material.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_garbage_treatment.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area_by_region.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_service_use.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_fountain.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_location.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_municipality.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_populated_place.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_sanitary_service.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_service_description.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_tenancy_housing.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_territory.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_wall_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_waste_water.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_water_consumption.dart';
import 'package:flutter_boiler/utils/enums/type_request.dart';
import 'package:flutter_boiler/utils/http_helpers.dart';
import 'package:flutter_boiler/utils/user_token_helpers.dart';

class CatalogDatasourceImpl extends CatalogDataSource {
  // final Dio dio;

  // CatalogDatasourceImpl(this.dio);

  /// Class used to implement http requests and handle json response
  CatalogDatasourceImpl([Dio? dio]) {
    this.dio = dio ?? this.dio;
  }

  /// This is the dio instance that will be used to make HTTP requests
  late Dio dio = serviceLocator<Dio>();

  @override
  Future<List<CatalogEntity>> getCatalog() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tipo-vivienda',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModel typeHousing = CatalogModel.fromJson(response.data);

        List<CatalogEntity> entities = typeHousing.data
            .map((e) => CatalogEntity(
                  idTipoVivienda: e.idTipoVivienda,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // Material de paredes
  @override
  Future<List<CatalogEntityWallType>> getCatalogWallMaterial() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/material-pared',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelWallType typeWallMaterial =
            CatalogModelWallType.fromJson(response.data);

        List<CatalogEntityWallType> entitiesWallMaterial = typeWallMaterial.data
            .map((e) => CatalogEntityWallType(
                  idMaterialPared: e.idMaterialPared,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entitiesWallMaterial;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  @override
  Future<List<CatalogEntityHealthArea>> getCatalogHealthArea() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/area-salud',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelHealthArea typeHealthArea =
            CatalogModelHealthArea.fromJson(response.data);

        List<CatalogEntityHealthArea> entitiesHealthArea = typeHealthArea.data
            .map((e) => CatalogEntityHealthArea(
                  idAs: e.idAs,
                  idRegion: e.idRegion,
                  nombre: e.nombre,
                  activa: e.activa,
                  idDepartamento: e.idDepartamento,
                ))
            .toList();

        return entitiesHealthArea;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // getCatalogFloorMaterial
  @override
  Future<List<CatalogEntityFloorMaterial>> getCatalogFloorMaterial() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/material-piso',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelFloorMaterial typeFloorMaterial =
            CatalogModelFloorMaterial.fromJson(response.data);

        List<CatalogEntityFloorMaterial> entitiesFloorMaterial =
            typeFloorMaterial.data
                .map((e) => CatalogEntityFloorMaterial(
                      idMaterialPiso: e.idMaterialPiso,
                      descripcion: e.descripcion,
                      estadoRegistro: e.estadoRegistro,
                      idUsuarioRegistro: e.idUsuarioRegistro,
                      fechaRegistro: e.fechaRegistro,
                    ))
                .toList();

        return entitiesFloorMaterial;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // getCatalogSanitaryService
  @override
  Future<List<CatalogEntitySanitaryService>> getCatalogSanitaryService() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tipo-servicio-sanitario',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelSanitaryService typeSanitaryService =
            CatalogModelSanitaryService.fromJson(response.data);

        List<CatalogEntitySanitaryService> entities = typeSanitaryService.data
            .map((e) => CatalogEntitySanitaryService(
                  idTipoServicioSanitario: e.idTipoServicioSanitario,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // abastecimiento-agua
  // getCatalogWaterConsumption
  @override
  Future<List<CatalogEntityWaterConsumption>>
      getCatalogWaterConsumption() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/abastecimiento-agua',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelWaterConsumption waterConsumption =
            CatalogModelWaterConsumption.fromJson(response.data);

        List<CatalogEntityWaterConsumption> entities = waterConsumption.data
            .map((e) => CatalogEntityWaterConsumption(
                  idAbastecimientoAgua: e.idAbastecimientoAgua,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // uso-servicio-sanitario
  @override
  Future<List<CatalogEntityHealthServiceUse>>
      getCatalogHealthServiceUse() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/uso-servicio-sanitario',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelHealthServiceUse typeHousing =
            CatalogModelHealthServiceUse.fromJson(response.data);

        List<CatalogEntityHealthServiceUse> entities = typeHousing.data
            .map((e) => CatalogEntityHealthServiceUse(
                  idUsoServicioSanitario: e.idUsoServicioSanitario,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // waste_water
  // tratamiento-agua-residual
  @override
  Future<List<CatalogEntityWasteWater>> getCatalogWasteWater() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tratamiento-agua-residual',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelWasteWater waterWaster =
            CatalogModelWasteWater.fromJson(response.data);

        List<CatalogEntityWasteWater> entities = waterWaster.data
            .map((e) => CatalogEntityWasteWater(
                  idTratamientoAguaResidual: e.idTratamientoAguaResidual,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // /tratamiento-basura
  // garbage_treatment
  @override
  Future<List<CatalogEntityGarbageTreatment>>
      getCatalogGarbageTreatment() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tratamiento-basura',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelGarbageTreatment garbageTreatment =
            CatalogModelGarbageTreatment.fromJson(response.data);

        List<CatalogEntityGarbageTreatment> entities = garbageTreatment.data
            .map((e) => CatalogEntityGarbageTreatment(
                  idTratamientoBasura: e.idTratamientoBasura,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // /tipo-tenencia-vivienda
  // getCatalogTenancyHousing
  @override
  Future<List<CatalogEntityTenancyHousing>> getCatalogTenancyHousing() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tenencia-vivienda',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelTenancyHousing tenancyHousing =
            CatalogModelTenancyHousing.fromJson(response.data);

        List<CatalogEntityTenancyHousing> entities = tenancyHousing.data
            .map((e) => CatalogEntityTenancyHousing(
                  idTenenciaVivienda: e.idTenenciaVivienda,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // fuente-cocina
  // getCatalogKitchenFountain
  @override
  Future<List<CatalogEntityKitchenFountain>> getCatalogKitchenFountain() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/fuente-cocina',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelKitchenFountain kitchenFountain =
            CatalogModelKitchenFountain.fromJson(response.data);

        List<CatalogEntityKitchenFountain> entities = kitchenFountain.data
            .map((e) => CatalogEntityKitchenFountain(
                  idFuenteCocina: e.idFuenteCocina,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // ubicacion-cocina
  // getCatalogKitchenLocation
  @override
  Future<List<CatalogEntityKitchenLocation>> getCatalogKitchenLocation() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/ubicacion-cocina',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelKitchenLocation kitchenLocation =
            CatalogModelKitchenLocation.fromJson(response.data);

        List<CatalogEntityKitchenLocation> entities = kitchenLocation.data
            .map((e) => CatalogEntityKitchenLocation(
                  idUbicacionCocina: e.idUbicacionCocina,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // tipo-cocina
  // getCatalogKitchenType
  @override
  Future<List<CatalogEntityKitchenType>> getCatalogKitchenType() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tipo-cocina',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelKitchenType kitchenType =
            CatalogModelKitchenType.fromJson(response.data);

        List<CatalogEntityKitchenType> entities = kitchenType.data
            .map((e) => CatalogEntityKitchenType(
                  idTipoCocina: e.idTipoCocina,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // tipo-animal
  // getCatalogAnimalType
  @override
  Future<List<CatalogEntityAnimalType>> getCatalogAnimalType() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/tipo-animal',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelAnimalType animalType =
            CatalogModelAnimalType.fromJson(response.data);

        List<CatalogEntityAnimalType> entities = animalType.data
            .map((e) => CatalogEntityAnimalType(
                  idTipoAnimal: e.idTipoAnimal,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // departamento
  // getCatalogDepartment
  @override
  Future<List<CatalogEntityDepartment>> getCatalogDepartment() async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/departamento',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelDepartment department =
            CatalogModelDepartment.fromJson(response.data);

        List<CatalogEntityDepartment> entities = department.data
            .map((e) => CatalogEntityDepartment(
                  idDepartamento: e.idDepartamento,
                  nombre: e.nombre,
                  estadoRegistro: e.estadoRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // {{url}}/municipio?id_departamento=2
  @override
  Future<List<CatalogEntityMunicipality>> getCatalogMunicipality(
      int idDepartment) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/municipio?id_departamento=$idDepartment',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelMunicipality municipality =
            CatalogModelMunicipality.fromJson(response.data);

        List<CatalogEntityMunicipality> entities = municipality.data
            .map((e) => CatalogEntityMunicipality(
                  idMunicipio: e.idMunicipio,
                  nombre: e.nombre,
                  idDepartamento: e.idDepartamento,
                  estadoRegistro: e.estadoRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // {{url}}/lugar-poblado?id_departamento=1&id_municipio=1
  @override
  Future<List<CatalogEntityPopulatedPlace>> getCatalogPopulatedPlace(
      int idDepartment, int idMunicipality) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint:
            '/lugar-poblado?id_departamento=$idDepartment&id_municipio=$idMunicipality',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelPopulatedPlace populatedPlace =
            CatalogModelPopulatedPlace.fromJson(response.data);

        List<CatalogEntityPopulatedPlace> entities = populatedPlace.data
            .map((e) => CatalogEntityPopulatedPlace(
                  idLp: e.idLp,
                  nombre: e.nombre,
                  categoria: e.categoria,
                  idDepartamento: e.idDepartamento,
                  idMunicipio: e.idMunicipio,
                  estadoRegistro: e.estadoRegistro,
                ))
            .toList();

        return entities;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

// {{url}}/area-salud?id_region=1&id_departamento=2
  @override
  Future<List<CatalogEntityHealthAreaByRegion>> getCatalogHealthAreaByRegion(
      int idRegion, int idDepartment) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint:
            '/area-salud?id_region=$idRegion&id_departamento=$idDepartment',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelHealthAreaByRegion typeHealthArea =
            CatalogModelHealthAreaByRegion.fromJson(response.data);

        List<CatalogEntityHealthAreaByRegion> entitiesHealthArea =
            typeHealthArea.data
                .map((e) => CatalogEntityHealthAreaByRegion(
                      idAs: e.idAs,
                      idRegion: e.idRegion,
                      nombre: e.nombre,
                      activa: e.activa,
                      idDepartamento: e.idDepartamento,
                    ))
                .toList();

        return entitiesHealthArea;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

// {{url}}/distrito-salud?id_as=200501000013&id_departamento=2&id_municipio=1
  @override
  Future<List<CatalogEntityDistrictHealth>> getCatalogHealthAreaByDistrict(
      int idAs, int idDepartment, int idMunicipality) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint:
            '/distrito-salud?id_as=$idAs&id_departamento=$idDepartment&id_municipio=$idMunicipality',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelDistrictHealth typeHealthArea =
            CatalogModelDistrictHealth.fromJson(response.data);

        List<CatalogEntityDistrictHealth> entitiesHealthArea =
            typeHealthArea.data
                .map((e) => CatalogEntityDistrictHealth(
                      idAs: e.idAs,
                      idDs: e.idDs,
                      nombre: e.nombre,
                      activa: e.activa,
                      idDepartamento: e.idDepartamento,
                      idMunicipio: e.idMunicipio,
                    ))
                .toList();
        return entitiesHealthArea;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

// {{url}}/descripcion-servicio?id_as=200701000029&id_ds=200701000013&id_departamento=2&id_municipio=1
  @override
  Future<List<CatalogEntityServiceDescription>> getCatalogHealthAreaByService(
      int idAs, int idDs, int idDepartment, int idMunicipality) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint:
            '/descripcion-servicio?id_as=$idAs&id_ds=$idDs&id_departamento=$idDepartment&id_municipio=$idMunicipality',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelServiceDescription typeHealthArea =
            CatalogModelServiceDescription.fromJson(response.data);

        List<CatalogEntityServiceDescription> entitiesHealthArea =
            typeHealthArea.data
                .map((e) => CatalogEntityServiceDescription(
                      idAs: e.idAs,
                      idDs: e.idDs,
                      idTs: e.idTs,
                      idTss: e.idTss,
                      nombre: e.nombre,
                      activa: e.activa,
                      idDepartamento: e.idDepartamento,
                      idMunicipio: e.idMunicipio,
                    ))
                .toList();
        return entitiesHealthArea;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  // {{url}}/territorio?id_as=200501000016&id_ds=200501000016&id_ts=200501000005
  @override
  Future<List<CatalogEntityTerritory>> getCatalogHealthAreaByTerritory(
      int idAs, int idDs, int idTs) async {
    try {
      String? token = await UserTokenSharedPreferences.getSavedAuthToken();

      final Response<dynamic> response =
          await HttpClientHelper(dio).requestHelper(
        endpoint: '/territorio?id_as=$idAs&id_ds=$idDs&id_ts=$idTs',
        typeOfRequests: TypeRequests.get,
        token: token,
      );

      if (response.statusCode == 200) {
        final CatalogModelTerritory typeHealthArea =
            CatalogModelTerritory.fromJson(response.data);

        List<CatalogEntityTerritory> entitiesHealthArea = typeHealthArea.data
            .map((e) => CatalogEntityTerritory(
                  idAs: e.idAs,
                  idDs: e.idDs,
                  idTs: e.idTs,
                  idTerritorio: e.idTerritorio,
                  descripcion: e.descripcion,
                  estadoRegistro: e.estadoRegistro,
                  idUsuarioRegistro: e.idUsuarioRegistro,
                  fechaRegistro: e.fechaRegistro,
                ))
            .toList();
        return entitiesHealthArea;
      } else {
        throw Exception('Failed to load catalog');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }
}
