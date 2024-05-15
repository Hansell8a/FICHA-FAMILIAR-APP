part of 'family_sheet_bloc.dart';

sealed class FamilySheetEvent extends Equatable {
  const FamilySheetEvent();

  @override
  List<Object> get props => [];
}

class LoadCatalogsEvent extends FamilySheetEvent {}

class FamilySheetTypeHousingEvent extends FamilySheetEvent {
  const FamilySheetTypeHousingEvent();
}

class UpdatedFamilySheetEvent extends FamilySheetEvent {
  const UpdatedFamilySheetEvent(this.housingType);

  final String housingType;

  @override
  List<Object> get props => [housingType];
}

class ChangeMunicipalityEvent extends FamilySheetEvent {
  const ChangeMunicipalityEvent(this.municipality);

  final String municipality;

  @override
  List<Object> get props => [municipality];
}
