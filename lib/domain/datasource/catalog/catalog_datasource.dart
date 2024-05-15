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

abstract class CatalogDataSource {
  Future<List<CatalogEntity>> getCatalog();
  Future<List<CatalogEntityWallType>> getCatalogWallMaterial();
  Future<List<CatalogEntityHealthArea>> getCatalogHealthArea();
  Future<List<CatalogEntityFloorMaterial>> getCatalogFloorMaterial();
  Future<List<CatalogEntitySanitaryService>> getCatalogSanitaryService();
  Future<List<CatalogEntityWaterConsumption>> getCatalogWaterConsumption();
  Future<List<CatalogEntityHealthServiceUse>> getCatalogHealthServiceUse();
  Future<List<CatalogEntityWasteWater>> getCatalogWasteWater();
  Future<List<CatalogEntityGarbageTreatment>> getCatalogGarbageTreatment();
  Future<List<CatalogEntityTenancyHousing>> getCatalogTenancyHousing();
  Future<List<CatalogEntityKitchenFountain>> getCatalogKitchenFountain();
  Future<List<CatalogEntityKitchenLocation>> getCatalogKitchenLocation();
  Future<List<CatalogEntityKitchenType>> getCatalogKitchenType();
  Future<List<CatalogEntityAnimalType>> getCatalogAnimalType();
  Future<List<CatalogEntityDepartment>> getCatalogDepartment();
  // {{url}}/municipio?id_departamento=2
  Future<List<CatalogEntityMunicipality>> getCatalogMunicipality(
      int idDepartment);
  // {{url}}/lugar-poblado?id_departamento=1&id_municipio=1
  Future<List<CatalogEntityPopulatedPlace>> getCatalogPopulatedPlace(
      int idDepartment, int idMunicipality);
  // {{url}}/area-salud?id_region=1&id_departamento=2
  Future<List<CatalogEntityHealthAreaByRegion>> getCatalogHealthAreaByRegion(
      int idRegion, int idDepartment);
  // {{url}}/distrito-salud?id_as=200501000013&id_departamento=2&id_municipio=1
  Future<List<CatalogEntityDistrictHealth>> getCatalogHealthAreaByDistrict(
      int idAs, int idDepartment, int idMunicipality);
  // {{url}}/descripcion-servicio?id_as=200701000029&id_ds=200701000013&id_departamento=2&id_municipio=1
  Future<List<CatalogEntityServiceDescription>> getCatalogHealthAreaByService(
      int idAs, int idDs, int idDepartment, int idMunicipality);
  // {{url}}/territorio?id_as=200501000016&id_ds=200501000016&id_ts=200501000005
  Future<List<CatalogEntityTerritory>> getCatalogHealthAreaByTerritory(
      int idAs, int idDs, int idTs);
}
