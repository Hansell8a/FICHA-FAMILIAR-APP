part of 'family_sheet_bloc.dart';

class FamilySheetState extends Equatable {
  const FamilySheetState({
    this.catalog = const [],
    this.housingType = '',
    this.catalogWallMaterial = const [],
    this.typeWallMaterial = '',
    this.catalogHealthArea = const [],
    this.typeHealthArea = '',
    this.catalogFloorMaterial = const [],
    this.typeFloorMaterial = '',
    this.catalogSanitaryService = const [],
    this.typeSanitaryService = '',
    this.catalogWaterConsumption = const [],
    this.typeWaterConsumption = '',
    this.catalogHealthServiceUse = const [],
    this.typeHealthServiceUse = const OptionCatalogModel.empty(),
    this.catalogWasteWater = const [],
    this.typeWasteWater = '',
    this.catalogGarbageTreatment = const [],
    this.typeGarbageTreatment = '',
    this.catalogTenancyHousing = const [],
    this.typeTenancyHousing = '',
    this.cataloKitchenFountain = const [],
    this.typeKitchenFountain = '',
    this.catalogKitchenLocation = const [],
    this.typeKitchenLocation = '',
    this.catalogKitchenType = const [],
    this.typeKitchenType = '',
    this.catalogAnimalType = const [],
    this.typeAnimalType = '',
    this.typeDepartment = '',
    this.typeMunicipality = '',
    this.catalogHousingEquipment = const [],

    this.numberFamiliesLiving = 0,
    this.numberPersonsLiving = 0,
    this.cantDormitories = 0,
    this.cantRooms = 0,
    

    /// Campos del formulario
    this.typeHousing = const OptionCatalogModel.empty(),
    this.neighborhood = const OptionCatalogModel.empty(),
    this.waterConsume = const OptionCatalogModel.empty(),
    this.sanitary = const OptionCatalogModel.empty(),
    this.wasteWater = const OptionCatalogModel.empty(),
    this.garbageTreatment = const OptionCatalogModel.empty(),
    this.housingHas = const OptionCatalogModel.empty(),
    this.fuelSource = const OptionCatalogModel.empty(),
    this.kitchenLocation = const OptionCatalogModel.empty(),
    this.kitchenType = const OptionCatalogModel.empty(),
    // Agua reposasda 
    this.restedWater = const OptionCatalogModel.empty(),
    // Vivienda habitada
    this.housingInhabited = const OptionCatalogModel.empty(),
    // Vivienda ocupada
    this.housingOccupied = const OptionCatalogModel.empty(),
    // Equipamiento de la vivienda
    this.housingEquipped = const OptionCatalogModel.empty(),
  });

  final List<CatalogEntity> catalog;
  final List<CatalogEntityWallType> catalogWallMaterial;
  final List<CatalogEntityHealthArea> catalogHealthArea;
  final List<CatalogEntityFloorMaterial> catalogFloorMaterial;
  final List<CatalogEntitySanitaryService> catalogSanitaryService;
  final List<CatalogEntityWaterConsumption> catalogWaterConsumption;
  final List<CatalogEntityHealthServiceUse> catalogHealthServiceUse;
  final List<CatalogEntityWasteWater> catalogWasteWater;
  final List<CatalogEntityGarbageTreatment> catalogGarbageTreatment;
  final List<CatalogEntityTenancyHousing> catalogTenancyHousing;
  final List<CatalogEntityKitchenFountain> cataloKitchenFountain;
  final List<CatalogEntityKitchenLocation> catalogKitchenLocation;
  final List<CatalogEntityKitchenType> catalogKitchenType;
  final List<CatalogEntityAnimalType> catalogAnimalType;
  // housingEquipment
  final List<CatalogEntityHousingEquipment> catalogHousingEquipment;

  final String housingType;
  final String typeWallMaterial;
  final String typeHealthArea;
  final String typeFloorMaterial;
  final String typeSanitaryService;
  final String typeWaterConsumption;
  final OptionCatalogModel typeHealthServiceUse;
  final String typeWasteWater;
  final String typeGarbageTreatment;
  final String typeTenancyHousing;
  final String typeKitchenFountain;
  final String typeKitchenLocation;
  final String typeKitchenType;
  final String typeAnimalType;
  final String typeDepartment;
  final String typeMunicipality;
  final int numberFamiliesLiving;
  final int numberPersonsLiving;
  final int cantDormitories;
  final int cantRooms;

  /// Campos del formulario
  final OptionCatalogModel typeHousing;
  final OptionCatalogModel neighborhood;
  final OptionCatalogModel waterConsume;
  final OptionCatalogModel sanitary;
  final OptionCatalogModel wasteWater;
  final OptionCatalogModel garbageTreatment;
  final OptionCatalogModel housingHas;
  final OptionCatalogModel fuelSource;
  final OptionCatalogModel kitchenLocation;
  final OptionCatalogModel kitchenType;
  final OptionCatalogModel restedWater;
  final OptionCatalogModel housingInhabited;
  final OptionCatalogModel housingOccupied;
  final OptionCatalogModel housingEquipped;

  FamilySheetState copyWith({
    List<CatalogEntity>? catalog,
    String? housingType,
    List<CatalogEntityWallType>? catalogWallMaterial,
    String? typeWallMaterial,
    List<CatalogEntityHealthArea>? catalogHealthArea,
    String? typeHealthArea,
    List<CatalogEntityFloorMaterial>? catalogFloorMaterial,
    String? typeFloorMaterial,
    List<CatalogEntitySanitaryService>? catalogSanitaryService,
    String? typeSanitaryService,
    List<CatalogEntityWaterConsumption>? catalogWaterConsumption,
    String? typeWaterConsumption,
    List<CatalogEntityHealthServiceUse>? catalogHealthServiceUse,
    OptionCatalogModel? typeHealthServiceUse,
    List<CatalogEntityWasteWater>? catalogWasteWater,
    String? typeWasteWater,
    List<CatalogEntityGarbageTreatment>? catalogGarbageTreatment,
    String? typeGarbageTreatment,
    List<CatalogEntityTenancyHousing>? catalogTenancyHousing,
    String? typeTenancyHousing,
    List<CatalogEntityKitchenFountain>? cataloKitchenFountain,
    String? typeKitchenFountain,
    List<CatalogEntityKitchenLocation>? catalogKitchenLocation,
    String? typeKitchenLocation,
    List<CatalogEntityKitchenType>? catalogKitchenType,
    String? typeKitchenType,
    List<CatalogEntityAnimalType>? catalogAnimalType,
    String? typeAnimalType,
    List<CatalogEntityDepartment>? catalogDepartment,
    String? typeDepartment,
    List<CatalogEntityMunicipality>? catalogMunicipality,
    String? typeMunicipality,
    List<CatalogEntityHousingEquipment>? catalogHousingEquipment,

    int? numberFamiliesLiving,
    int? numberPersonsLiving,
    int? cantDormitories,
    int? cantRooms,

    /// Campos del formulario
    OptionCatalogModel? typeHousing,
    OptionCatalogModel? neighborhood,
    OptionCatalogModel? waterConsume,
    OptionCatalogModel? sanitary,
    OptionCatalogModel? wasteWater,
    OptionCatalogModel? garbageTreatment,
    OptionCatalogModel? housingHas,
    OptionCatalogModel? fuelSource,
    OptionCatalogModel? kitchenLocation,
    OptionCatalogModel? kitchenType,
    OptionCatalogModel? restedWater,
    OptionCatalogModel? housingInhabited,
    OptionCatalogModel? housingOccupied,
    OptionCatalogModel? housingEquipped,
  }) {
    return FamilySheetState(
      catalog: catalog ?? this.catalog,
      housingType: housingType ?? this.housingType,
      catalogWallMaterial: catalogWallMaterial ?? this.catalogWallMaterial,
      typeWallMaterial: typeWallMaterial ?? this.typeWallMaterial,
      catalogHealthArea: catalogHealthArea ?? this.catalogHealthArea,
      typeHealthArea: typeHealthArea ?? this.typeHealthArea,
      catalogFloorMaterial: catalogFloorMaterial ?? this.catalogFloorMaterial,
      typeFloorMaterial: typeFloorMaterial ?? this.typeFloorMaterial,
      catalogSanitaryService:
          catalogSanitaryService ?? this.catalogSanitaryService,
      typeSanitaryService: typeSanitaryService ?? this.typeSanitaryService,
      catalogWaterConsumption:
          catalogWaterConsumption ?? this.catalogWaterConsumption,
      typeWaterConsumption: typeWaterConsumption ?? this.typeWaterConsumption,
      catalogHealthServiceUse:
          catalogHealthServiceUse ?? this.catalogHealthServiceUse,
      typeHealthServiceUse: typeHealthServiceUse ?? this.typeHealthServiceUse,
      catalogWasteWater: catalogWasteWater ?? this.catalogWasteWater,
      typeWasteWater: typeWasteWater ?? this.typeWasteWater,
      catalogGarbageTreatment:
          catalogGarbageTreatment ?? this.catalogGarbageTreatment,
      typeGarbageTreatment: typeGarbageTreatment ?? this.typeGarbageTreatment,
      catalogTenancyHousing:
          catalogTenancyHousing ?? this.catalogTenancyHousing,
      typeTenancyHousing: typeTenancyHousing ?? this.typeTenancyHousing,
      cataloKitchenFountain:
          cataloKitchenFountain ?? this.cataloKitchenFountain,
      typeKitchenFountain: typeKitchenFountain ?? this.typeKitchenFountain,
      catalogKitchenLocation:
          catalogKitchenLocation ?? this.catalogKitchenLocation,
      typeKitchenLocation: typeKitchenLocation ?? this.typeKitchenLocation,
      catalogKitchenType: catalogKitchenType ?? this.catalogKitchenType,
      typeKitchenType: typeKitchenType ?? this.typeKitchenType,
      catalogAnimalType: catalogAnimalType ?? this.catalogAnimalType,
      typeAnimalType: typeAnimalType ?? this.typeAnimalType,
      typeDepartment: typeDepartment ?? this.typeDepartment,
      typeMunicipality: typeMunicipality ?? this.typeMunicipality,

      /// Campos del formulario
      typeHousing: typeHousing ?? this.typeHousing,
      neighborhood: neighborhood ?? this.neighborhood,
      waterConsume: waterConsume ?? this.waterConsume,
      sanitary: sanitary ?? this.sanitary,
      wasteWater: wasteWater ?? this.wasteWater,
      garbageTreatment: garbageTreatment ?? this.garbageTreatment,
      housingHas: housingHas ?? this.housingHas,
      fuelSource: fuelSource ?? this.fuelSource,
      kitchenLocation: kitchenLocation ?? this.kitchenLocation,
      kitchenType: kitchenType ?? this.kitchenType,
      restedWater: restedWater ?? this.restedWater,
      housingInhabited: housingInhabited ?? this.housingInhabited,
      catalogHousingEquipment: catalogHousingEquipment ?? this.catalogHousingEquipment,
      housingEquipped: housingEquipped ?? this.housingEquipped,

      numberFamiliesLiving: numberFamiliesLiving ?? this.numberFamiliesLiving,
      numberPersonsLiving: numberPersonsLiving ?? this.numberPersonsLiving,
      cantDormitories: cantDormitories ?? this.cantDormitories,
      cantRooms: cantRooms ?? this.cantRooms,
    );
  }

  @override
  List<Object> get props => [
        catalog,
        housingType,
        catalogWallMaterial,
        typeWallMaterial,
        catalogHealthArea,
        typeHealthArea,
        catalogFloorMaterial,
        typeFloorMaterial,
        catalogSanitaryService,
        typeSanitaryService,
        catalogWaterConsumption,
        typeWaterConsumption,
        catalogHealthServiceUse,
        typeHealthServiceUse,
        catalogWasteWater,
        typeWasteWater,
        catalogGarbageTreatment,
        typeGarbageTreatment,
        catalogTenancyHousing,
        typeTenancyHousing,
        cataloKitchenFountain,
        typeKitchenFountain,
        catalogKitchenLocation,
        typeKitchenLocation,
        catalogKitchenType,
        typeKitchenType,
        catalogAnimalType,
        typeAnimalType,
        typeDepartment,
        typeMunicipality,

        /// Campos del formulario
        typeHousing,
        neighborhood,
        waterConsume,
        sanitary,
        wasteWater,
        garbageTreatment,
        housingHas,
        fuelSource,
        kitchenLocation,
        kitchenType,
        restedWater,
        housingInhabited,
        housingOccupied,
        catalogHousingEquipment,
        housingEquipped,

        numberFamiliesLiving,
        numberPersonsLiving,
        cantDormitories,
        cantRooms,
      ];
}
