import 'package:flutter_boiler/domain/datasource/catalog/catalog_datasource.dart';
import 'package:flutter_boiler/domain/entities/catalog_entity.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_animal_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_community.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_community_center.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_department.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_district_health.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_floor_material.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_garbage_treatment.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_area_by_region.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_health_service_use.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_housing_equipment.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_fountain.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_location.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_kitchen_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_municipality.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_populated_place.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_sanitary_service.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_sector.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_service_description.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_tenancy_housing.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_territory.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_wall_type.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_waste_water.dart';
import 'package:flutter_boiler/domain/entities/catalogs/catalog_entity_water_consumption.dart';
import 'package:flutter_boiler/domain/repository/catalog/catalog_repository.dart';

class CatalogRepositoryImpl extends CatalogRepository {
  final CatalogDataSource catalogDataSource;

  CatalogRepositoryImpl({required this.catalogDataSource});

  @override
  Future<List<CatalogEntity>> getCatalog() async {
    try {
      return await catalogDataSource.getCatalog();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityWallType>> getCatalogWallMaterial() async {
    try {
      return await catalogDataSource.getCatalogWallMaterial();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityHealthArea>> getCatalogHealthArea() async {
    try {
      return await catalogDataSource.getCatalogHealthArea();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityFloorMaterial>> getCatalogFloorMaterial() async {
    try {
      return await catalogDataSource.getCatalogFloorMaterial();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntitySanitaryService>> getCatalogSanitaryService() async {
    try {
      return await catalogDataSource.getCatalogSanitaryService();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityWaterConsumption>>
      getCatalogWaterConsumption() async {
    try {
      return await catalogDataSource.getCatalogWaterConsumption();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityHealthServiceUse>>
      getCatalogHealthServiceUse() async {
    try {
      return await catalogDataSource.getCatalogHealthServiceUse();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityWasteWater>> getCatalogWasteWater() async {
    try {
      return await catalogDataSource.getCatalogWasteWater();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityGarbageTreatment>>
      getCatalogGarbageTreatment() async {
    try {
      return await catalogDataSource.getCatalogGarbageTreatment();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityTenancyHousing>> getCatalogTenancyHousing() async {
    try {
      return await catalogDataSource.getCatalogTenancyHousing();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityKitchenFountain>> getCatalogKitchenFountain() async {
    try {
      return await catalogDataSource.getCatalogKitchenFountain();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityKitchenLocation>> getCatalogKitchenLocation() async {
    try {
      return await catalogDataSource.getCatalogKitchenLocation();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityKitchenType>> getCatalogKitchenType() async {
    try {
      return await catalogDataSource.getCatalogKitchenType();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityAnimalType>> getCatalogAnimalType() async {
    try {
      return await catalogDataSource.getCatalogAnimalType();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityDepartment>> getCatalogDepartment() async {
    try {
      return await catalogDataSource.getCatalogDepartment();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityMunicipality>> getCatalogMunicipality(
      int idDepartment) async {
    try {
      return await catalogDataSource.getCatalogMunicipality(idDepartment);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityPopulatedPlace>> getCatalogPopulatedPlace(
      int idDepartment, int idMunicipality) async {
    try {
      return await catalogDataSource.getCatalogPopulatedPlace(
          idDepartment, idMunicipality);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityHealthAreaByRegion>> getCatalogHealthAreaByRegion(
      int idRegion, int idDepartment) async {
    try {
      return await catalogDataSource.getCatalogHealthAreaByRegion(
          idDepartment, idRegion);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityDistrictHealth>> getCatalogHealthAreaByDistrict(
      int idAs, int idDepartment, int idMunicipality) async {
    try {
      return await catalogDataSource.getCatalogHealthAreaByDistrict(
          idAs, idDepartment, idMunicipality);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityServiceDescription>> getCatalogHealthAreaByService(
      int idAs, int idDs, int idDepartment, int idMunicipality) async {
    try {
      return await catalogDataSource.getCatalogHealthAreaByService(
          idAs, idDs, idDepartment, idMunicipality);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityTerritory>> getCatalogHealthAreaByTerritory(
      int idAs, int idDs, int idTs) async {
    try {
      return await catalogDataSource.getCatalogHealthAreaByTerritory(
          idAs, idDs, idTs);
    } catch (e) {
      rethrow;
    }
  }

  // {{url}}/sector?id_territorio=3
  @override
  Future<List<CatalogEntitySector>> getCatalogSector(int idTerritory) async {
    try {
      return await catalogDataSource.getCatalogSector(idTerritory);
    } catch (e) {
      rethrow;
    }
  }

  // {{url}}/sector?id_territorio=3
  @override
  Future<List<CatalogEntityCommunityCenter>> getCatalogCommunityCenter(
      int idTs, int idAs, int idDs) async {
    try {
      return await catalogDataSource.getCatalogCommunityCenter(
          idTs, idAs, idDs);
    } catch (e) {
      rethrow;
    }
  }

  // Future<List<CatalogEntityCommunity>> getCatalogCommunity(int idDepartamento,
  //     int idMunicipio, int idLp, int idAs, int idDs, int idTs, int idCc);
  @override
  Future<List<CatalogEntityCommunity>> getCatalogCommunity(int idDepartamento,
      int idMunicipio, int idLp, int idAs, int idDs, int idTs, int idCc) async {
    try {
      return await catalogDataSource.getCatalogCommunity(
          idDepartamento, idMunicipio, idLp, idAs, idDs, idTs, idCc);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CatalogEntityHousingEquipment>> getCatalogHousingEquipment() async {
    try {
      return await catalogDataSource.getCatalogHousingEquipment();
    } catch (e) {
      rethrow;
    }
  }
}
