part of 'family_sheet_form1_bloc.dart';

class FamilySheetForm1State extends Equatable {
  const FamilySheetForm1State({
    this.catalogDepartment = const [],
    this.catalogMunicipality = const [],
    this.catalogDepartmentSelected = const OptionCatalogModel.empty(),
    this.catalogMunicipalitySelected = const OptionCatalogModel.empty(),
    this.catalogPopulatedPlace = const [],
    this.catalogPopulatedPlaceSelected = const OptionCatalogModel.empty(),
    this.catalogHealthArea = const [],
    this.catalogHealthAreaSelected = const OptionCatalogModel.empty(),
    this.catalogDistrictHealth = const [],
    this.catalogDistrictHealthSelected = const OptionCatalogModel.empty(),
    this.catalogServiceDescription = const [],
    this.catalogServiceDescriptionSelected = const OptionCatalogModel.empty(),
    this.catalogTerritory = const [],
    this.catalogTerritorySelected = const OptionCatalogModel.empty(),
  });

  final List<CatalogEntityDepartment> catalogDepartment;
  final List<CatalogEntityMunicipality> catalogMunicipality;
  final List<CatalogEntityPopulatedPlace> catalogPopulatedPlace;
  final List<CatalogEntityHealthAreaByRegion> catalogHealthArea;
  final List<CatalogEntityDistrictHealth> catalogDistrictHealth;
  final List<CatalogEntityServiceDescription> catalogServiceDescription;
  final List<CatalogEntityTerritory> catalogTerritory;

  final OptionCatalogModel catalogDepartmentSelected;
  final OptionCatalogModel catalogMunicipalitySelected;
  final OptionCatalogModel catalogPopulatedPlaceSelected;
  final OptionCatalogModel catalogHealthAreaSelected;
  final OptionCatalogModel catalogDistrictHealthSelected;
  final OptionCatalogModel catalogServiceDescriptionSelected;
  final OptionCatalogModel catalogTerritorySelected;

  FamilySheetForm1State copyWith({
    List<CatalogEntityDepartment>? catalogDepartment,
    List<CatalogEntityMunicipality>? catalogMunicipality,
    OptionCatalogModel? catalogDepartmentSelected,
    OptionCatalogModel? catalogMunicipalitySelected,
    List<CatalogEntityPopulatedPlace>? catalogPopulatedPlace,
    OptionCatalogModel? catalogPopulatedPlaceSelected,
    List<CatalogEntityHealthAreaByRegion>? catalogHealthArea,
    OptionCatalogModel? catalogHealthAreaSelected,
    List<CatalogEntityDistrictHealth>? catalogDistrictHealth,
    OptionCatalogModel? catalogDistrictHealthSelected,
    List<CatalogEntityServiceDescription>? catalogServiceDescription,
    OptionCatalogModel? catalogServiceDescriptionSelected,
    List<CatalogEntityTerritory>? catalogTerritory,
    OptionCatalogModel? catalogTerritorySelected,
  }) {
    return FamilySheetForm1State(
      catalogDepartment: catalogDepartment ?? this.catalogDepartment,
      catalogMunicipality: catalogMunicipality ?? this.catalogMunicipality,
      catalogDepartmentSelected:
          catalogDepartmentSelected ?? this.catalogDepartmentSelected,
      catalogMunicipalitySelected:
          catalogMunicipalitySelected ?? this.catalogMunicipalitySelected,
      catalogPopulatedPlace:
          catalogPopulatedPlace ?? this.catalogPopulatedPlace,
      catalogPopulatedPlaceSelected:
          catalogPopulatedPlaceSelected ?? this.catalogPopulatedPlaceSelected,
      catalogHealthArea: catalogHealthArea ?? this.catalogHealthArea,
      catalogHealthAreaSelected:
          catalogHealthAreaSelected ?? this.catalogHealthAreaSelected,
      catalogDistrictHealth:
          catalogDistrictHealth ?? this.catalogDistrictHealth,
      catalogDistrictHealthSelected:
          catalogDistrictHealthSelected ?? this.catalogDistrictHealthSelected,
      catalogServiceDescription:
          catalogServiceDescription ?? this.catalogServiceDescription,
      catalogServiceDescriptionSelected: catalogServiceDescriptionSelected ??
          this.catalogServiceDescriptionSelected,
      catalogTerritory: catalogTerritory ?? this.catalogTerritory,
      catalogTerritorySelected:
          catalogTerritorySelected ?? this.catalogTerritorySelected,
    );
  }

  @override
  List<Object> get props => [
        catalogDepartment,
        catalogMunicipality,
        catalogDepartmentSelected,
        catalogMunicipalitySelected,
        catalogPopulatedPlace,
        catalogPopulatedPlaceSelected,
        catalogHealthArea,
        catalogHealthAreaSelected,
        catalogDistrictHealth,
        catalogDistrictHealthSelected,
        catalogServiceDescription,
        catalogServiceDescriptionSelected,
        catalogTerritory,
        catalogTerritorySelected,
      ];
}
