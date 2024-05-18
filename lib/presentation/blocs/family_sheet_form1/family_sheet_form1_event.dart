part of 'family_sheet_form1_bloc.dart';

sealed class FamilySheetForm1Event extends Equatable {
  const FamilySheetForm1Event();

  @override
  List<Object> get props => [];
}

class LoadCatalogDepartmentEvent extends FamilySheetForm1Event {}

class LoadCatalogMunicipalityEvent extends FamilySheetForm1Event {
  final int department;

  const LoadCatalogMunicipalityEvent(this.department);

  @override
  List<Object> get props => [department];
}

class ChangeDepartmentEvent extends FamilySheetForm1Event {
  final OptionCatalogModel department;

  const ChangeDepartmentEvent(this.department);

  @override
  List<Object> get props => [department];
}

class ChangeMunicipalityForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel municipality;

  const ChangeMunicipalityForm1Event(this.municipality);

  @override
  List<Object> get props => [municipality];
}

class LoadCatalogPopulatedPlaceEvent extends FamilySheetForm1Event {
  final int department;
  final int municipality;

  const LoadCatalogPopulatedPlaceEvent(this.department, this.municipality);

  @override
  List<Object> get props => [department, municipality];
}

class ChangePopulatedPlaceForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel populatedPlace;

  const ChangePopulatedPlaceForm1Event(this.populatedPlace);

  @override
  List<Object> get props => [populatedPlace];
}

class LoadCatalogHealthAreaEvent extends FamilySheetForm1Event {
  final int region;
  final int department;

  const LoadCatalogHealthAreaEvent(this.region, this.department);

  @override
  List<Object> get props => [region, department];
}

class ChangeHealthAreaForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel healthArea;

  const ChangeHealthAreaForm1Event(this.healthArea);

  @override
  List<Object> get props => [healthArea];
}

class LoadCatalogHealthAreaByDistrictEvent extends FamilySheetForm1Event {
  final int as;
  final int department;
  final int municipality;

  const LoadCatalogHealthAreaByDistrictEvent(
      this.as, this.department, this.municipality);

  @override
  List<Object> get props => [as, department, municipality];
}

class ChangeHealthAreaByDistrictForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel healthAreaByDistrict;

  const ChangeHealthAreaByDistrictForm1Event(this.healthAreaByDistrict);

  @override
  List<Object> get props => [healthAreaByDistrict];
}

class LoadCatalogHealthAreaByServiceEvent extends FamilySheetForm1Event {
  final int as;
  final int ds;
  final int department;
  final int municipality;

  const LoadCatalogHealthAreaByServiceEvent(
      this.as, this.ds, this.department, this.municipality);

  @override
  List<Object> get props => [as, ds, department, municipality];
}

class ChangeHealthAreaByServiceForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel healthAreaByService;

  const ChangeHealthAreaByServiceForm1Event(this.healthAreaByService);

  @override
  List<Object> get props => [healthAreaByService];
}

class LoadCatalogHealthAreaByTerritoryEvent extends FamilySheetForm1Event {
  final int as;
  final int ds;
  final int ts;

  const LoadCatalogHealthAreaByTerritoryEvent(this.as, this.ds, this.ts);

  @override
  List<Object> get props => [as, ds, ts];
}

class ChangeHealthAreaByTerritoryForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel healthAreaByTerritory;

  const ChangeHealthAreaByTerritoryForm1Event(this.healthAreaByTerritory);

  @override
  List<Object> get props => [healthAreaByTerritory];
}

class LoadCatalogSectorEvent extends FamilySheetForm1Event {
  final int territory;

  const LoadCatalogSectorEvent(this.territory);

  @override
  List<Object> get props => [territory];
}

class ChangeSectorForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel sector;

  const ChangeSectorForm1Event(this.sector);

  @override
  List<Object> get props => [sector];
}

class LoadCatalogCommunityCenterEvent extends FamilySheetForm1Event {
  final int ts, ds, as;

  const LoadCatalogCommunityCenterEvent(this.ts, this.ds, this.as);

  @override
  List<Object> get props => [ts];
}

class ChangeCommunityCenterForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel communityCenter;

  const ChangeCommunityCenterForm1Event(this.communityCenter);

  @override
  List<Object> get props => [communityCenter];
}

// Future<List<CatalogEntityCommunity>> getCatalogCommunity(int idDepartamento,
//       int idMunicipio, int idLp, int idAs, int idDs, int idTs, int idCc);
class LoadCatalogCommunityEvent extends FamilySheetForm1Event {
  final int idDepartamento, idMunicipio, idLp, idAs, idDs, idTs, idCc;

  const LoadCatalogCommunityEvent(this.idDepartamento, this.idMunicipio,
      this.idLp, this.idAs, this.idDs, this.idTs, this.idCc);

  @override
  List<Object> get props =>
      [idDepartamento, idMunicipio, idLp, idAs, idDs, idTs, idCc];
}

class ChangeCommunityForm1Event extends FamilySheetForm1Event {
  final OptionCatalogModel community;

  const ChangeCommunityForm1Event(this.community);

  @override
  List<Object> get props => [community];
}

// Event get cui number
class GetCuiNumberEvent extends FamilySheetForm1Event {}

// Event get full name
class GetFullNameEvent extends FamilySheetForm1Event {}

class SaveAddressEvent extends FamilySheetForm1Event {
  final String address;

  const SaveAddressEvent(this.address);

  @override
  List<Object> get props => [address];
}

class CreateFamilySheetForm1Event extends FamilySheetForm1Event {
  const CreateFamilySheetForm1Event();
}

// validation event
class ValidateFamilySheetForm1Event extends FamilySheetForm1Event {}
