// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sqlite_connection.dart';

// ignore_for_file: type=lint
class $FamilySheetDataFormTable extends FamilySheetDataForm
    with TableInfo<$FamilySheetDataFormTable, FamilySheetDataFormData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilySheetDataFormTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
      'latitude', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<String> longitude = GeneratedColumn<String>(
      'longitude', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _departmentLocationMeta =
      const VerificationMeta('departmentLocation');
  @override
  late final GeneratedColumn<int> departmentLocation = GeneratedColumn<int>(
      'department_location', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _municipalityLocationMeta =
      const VerificationMeta('municipalityLocation');
  @override
  late final GeneratedColumn<int> municipalityLocation = GeneratedColumn<int>(
      'municipality_location', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _populatedPlaceMeta =
      const VerificationMeta('populatedPlace');
  @override
  late final GeneratedColumn<int> populatedPlace = GeneratedColumn<int>(
      'populated_place', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _healthAreaMeta =
      const VerificationMeta('healthArea');
  @override
  late final GeneratedColumn<int> healthArea = GeneratedColumn<int>(
      'health_area', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _healthDistrictMeta =
      const VerificationMeta('healthDistrict');
  @override
  late final GeneratedColumn<int> healthDistrict = GeneratedColumn<int>(
      'health_district', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _serviceDescriptionMeta =
      const VerificationMeta('serviceDescription');
  @override
  late final GeneratedColumn<int> serviceDescription = GeneratedColumn<int>(
      'service_description', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _territoryMeta =
      const VerificationMeta('territory');
  @override
  late final GeneratedColumn<int> territory = GeneratedColumn<int>(
      'territory', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<int> sector = GeneratedColumn<int>(
      'sector', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _communityCenterMeta =
      const VerificationMeta('communityCenter');
  @override
  late final GeneratedColumn<int> communityCenter = GeneratedColumn<int>(
      'community_center', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _communityMeta =
      const VerificationMeta('community');
  @override
  late final GeneratedColumn<int> community = GeneratedColumn<int>(
      'community', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _cuiMeta = const VerificationMeta('cui');
  @override
  late final GeneratedColumn<int> cui = GeneratedColumn<int>(
      'cui', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        latitude,
        longitude,
        address,
        departmentLocation,
        municipalityLocation,
        populatedPlace,
        healthArea,
        healthDistrict,
        serviceDescription,
        territory,
        sector,
        communityCenter,
        community,
        cui,
        firstName,
        lastName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_sheet_data_form';
  @override
  VerificationContext validateIntegrity(
      Insertable<FamilySheetDataFormData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('department_location')) {
      context.handle(
          _departmentLocationMeta,
          departmentLocation.isAcceptableOrUnknown(
              data['department_location']!, _departmentLocationMeta));
    } else if (isInserting) {
      context.missing(_departmentLocationMeta);
    }
    if (data.containsKey('municipality_location')) {
      context.handle(
          _municipalityLocationMeta,
          municipalityLocation.isAcceptableOrUnknown(
              data['municipality_location']!, _municipalityLocationMeta));
    } else if (isInserting) {
      context.missing(_municipalityLocationMeta);
    }
    if (data.containsKey('populated_place')) {
      context.handle(
          _populatedPlaceMeta,
          populatedPlace.isAcceptableOrUnknown(
              data['populated_place']!, _populatedPlaceMeta));
    } else if (isInserting) {
      context.missing(_populatedPlaceMeta);
    }
    if (data.containsKey('health_area')) {
      context.handle(
          _healthAreaMeta,
          healthArea.isAcceptableOrUnknown(
              data['health_area']!, _healthAreaMeta));
    } else if (isInserting) {
      context.missing(_healthAreaMeta);
    }
    if (data.containsKey('health_district')) {
      context.handle(
          _healthDistrictMeta,
          healthDistrict.isAcceptableOrUnknown(
              data['health_district']!, _healthDistrictMeta));
    } else if (isInserting) {
      context.missing(_healthDistrictMeta);
    }
    if (data.containsKey('service_description')) {
      context.handle(
          _serviceDescriptionMeta,
          serviceDescription.isAcceptableOrUnknown(
              data['service_description']!, _serviceDescriptionMeta));
    } else if (isInserting) {
      context.missing(_serviceDescriptionMeta);
    }
    if (data.containsKey('territory')) {
      context.handle(_territoryMeta,
          territory.isAcceptableOrUnknown(data['territory']!, _territoryMeta));
    } else if (isInserting) {
      context.missing(_territoryMeta);
    }
    if (data.containsKey('sector')) {
      context.handle(_sectorMeta,
          sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta));
    } else if (isInserting) {
      context.missing(_sectorMeta);
    }
    if (data.containsKey('community_center')) {
      context.handle(
          _communityCenterMeta,
          communityCenter.isAcceptableOrUnknown(
              data['community_center']!, _communityCenterMeta));
    } else if (isInserting) {
      context.missing(_communityCenterMeta);
    }
    if (data.containsKey('community')) {
      context.handle(_communityMeta,
          community.isAcceptableOrUnknown(data['community']!, _communityMeta));
    } else if (isInserting) {
      context.missing(_communityMeta);
    }
    if (data.containsKey('cui')) {
      context.handle(
          _cuiMeta, cui.isAcceptableOrUnknown(data['cui']!, _cuiMeta));
    } else if (isInserting) {
      context.missing(_cuiMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilySheetDataFormData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilySheetDataFormData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}longitude'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      departmentLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}department_location'])!,
      municipalityLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}municipality_location'])!,
      populatedPlace: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}populated_place'])!,
      healthArea: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}health_area'])!,
      healthDistrict: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}health_district'])!,
      serviceDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}service_description'])!,
      territory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}territory'])!,
      sector: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sector'])!,
      communityCenter: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}community_center'])!,
      community: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}community'])!,
      cui: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cui'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
    );
  }

  @override
  $FamilySheetDataFormTable createAlias(String alias) {
    return $FamilySheetDataFormTable(attachedDatabase, alias);
  }
}

class FamilySheetDataFormData extends DataClass
    implements Insertable<FamilySheetDataFormData> {
  final int id;
  final String latitude;
  final String longitude;
  final String address;
  final int departmentLocation;
  final int municipalityLocation;
  final int populatedPlace;
  final int healthArea;
  final int healthDistrict;
  final int serviceDescription;
  final int territory;
  final int sector;
  final int communityCenter;
  final int community;
  final int cui;
  final String firstName;
  final String lastName;
  const FamilySheetDataFormData(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.address,
      required this.departmentLocation,
      required this.municipalityLocation,
      required this.populatedPlace,
      required this.healthArea,
      required this.healthDistrict,
      required this.serviceDescription,
      required this.territory,
      required this.sector,
      required this.communityCenter,
      required this.community,
      required this.cui,
      required this.firstName,
      required this.lastName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['latitude'] = Variable<String>(latitude);
    map['longitude'] = Variable<String>(longitude);
    map['address'] = Variable<String>(address);
    map['department_location'] = Variable<int>(departmentLocation);
    map['municipality_location'] = Variable<int>(municipalityLocation);
    map['populated_place'] = Variable<int>(populatedPlace);
    map['health_area'] = Variable<int>(healthArea);
    map['health_district'] = Variable<int>(healthDistrict);
    map['service_description'] = Variable<int>(serviceDescription);
    map['territory'] = Variable<int>(territory);
    map['sector'] = Variable<int>(sector);
    map['community_center'] = Variable<int>(communityCenter);
    map['community'] = Variable<int>(community);
    map['cui'] = Variable<int>(cui);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    return map;
  }

  FamilySheetDataFormCompanion toCompanion(bool nullToAbsent) {
    return FamilySheetDataFormCompanion(
      id: Value(id),
      latitude: Value(latitude),
      longitude: Value(longitude),
      address: Value(address),
      departmentLocation: Value(departmentLocation),
      municipalityLocation: Value(municipalityLocation),
      populatedPlace: Value(populatedPlace),
      healthArea: Value(healthArea),
      healthDistrict: Value(healthDistrict),
      serviceDescription: Value(serviceDescription),
      territory: Value(territory),
      sector: Value(sector),
      communityCenter: Value(communityCenter),
      community: Value(community),
      cui: Value(cui),
      firstName: Value(firstName),
      lastName: Value(lastName),
    );
  }

  factory FamilySheetDataFormData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilySheetDataFormData(
      id: serializer.fromJson<int>(json['id']),
      latitude: serializer.fromJson<String>(json['latitude']),
      longitude: serializer.fromJson<String>(json['longitude']),
      address: serializer.fromJson<String>(json['address']),
      departmentLocation: serializer.fromJson<int>(json['departmentLocation']),
      municipalityLocation:
          serializer.fromJson<int>(json['municipalityLocation']),
      populatedPlace: serializer.fromJson<int>(json['populatedPlace']),
      healthArea: serializer.fromJson<int>(json['healthArea']),
      healthDistrict: serializer.fromJson<int>(json['healthDistrict']),
      serviceDescription: serializer.fromJson<int>(json['serviceDescription']),
      territory: serializer.fromJson<int>(json['territory']),
      sector: serializer.fromJson<int>(json['sector']),
      communityCenter: serializer.fromJson<int>(json['communityCenter']),
      community: serializer.fromJson<int>(json['community']),
      cui: serializer.fromJson<int>(json['cui']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'latitude': serializer.toJson<String>(latitude),
      'longitude': serializer.toJson<String>(longitude),
      'address': serializer.toJson<String>(address),
      'departmentLocation': serializer.toJson<int>(departmentLocation),
      'municipalityLocation': serializer.toJson<int>(municipalityLocation),
      'populatedPlace': serializer.toJson<int>(populatedPlace),
      'healthArea': serializer.toJson<int>(healthArea),
      'healthDistrict': serializer.toJson<int>(healthDistrict),
      'serviceDescription': serializer.toJson<int>(serviceDescription),
      'territory': serializer.toJson<int>(territory),
      'sector': serializer.toJson<int>(sector),
      'communityCenter': serializer.toJson<int>(communityCenter),
      'community': serializer.toJson<int>(community),
      'cui': serializer.toJson<int>(cui),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
    };
  }

  FamilySheetDataFormData copyWith(
          {int? id,
          String? latitude,
          String? longitude,
          String? address,
          int? departmentLocation,
          int? municipalityLocation,
          int? populatedPlace,
          int? healthArea,
          int? healthDistrict,
          int? serviceDescription,
          int? territory,
          int? sector,
          int? communityCenter,
          int? community,
          int? cui,
          String? firstName,
          String? lastName}) =>
      FamilySheetDataFormData(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        address: address ?? this.address,
        departmentLocation: departmentLocation ?? this.departmentLocation,
        municipalityLocation: municipalityLocation ?? this.municipalityLocation,
        populatedPlace: populatedPlace ?? this.populatedPlace,
        healthArea: healthArea ?? this.healthArea,
        healthDistrict: healthDistrict ?? this.healthDistrict,
        serviceDescription: serviceDescription ?? this.serviceDescription,
        territory: territory ?? this.territory,
        sector: sector ?? this.sector,
        communityCenter: communityCenter ?? this.communityCenter,
        community: community ?? this.community,
        cui: cui ?? this.cui,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
      );
  @override
  String toString() {
    return (StringBuffer('FamilySheetDataFormData(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address, ')
          ..write('departmentLocation: $departmentLocation, ')
          ..write('municipalityLocation: $municipalityLocation, ')
          ..write('populatedPlace: $populatedPlace, ')
          ..write('healthArea: $healthArea, ')
          ..write('healthDistrict: $healthDistrict, ')
          ..write('serviceDescription: $serviceDescription, ')
          ..write('territory: $territory, ')
          ..write('sector: $sector, ')
          ..write('communityCenter: $communityCenter, ')
          ..write('community: $community, ')
          ..write('cui: $cui, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      latitude,
      longitude,
      address,
      departmentLocation,
      municipalityLocation,
      populatedPlace,
      healthArea,
      healthDistrict,
      serviceDescription,
      territory,
      sector,
      communityCenter,
      community,
      cui,
      firstName,
      lastName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilySheetDataFormData &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.address == this.address &&
          other.departmentLocation == this.departmentLocation &&
          other.municipalityLocation == this.municipalityLocation &&
          other.populatedPlace == this.populatedPlace &&
          other.healthArea == this.healthArea &&
          other.healthDistrict == this.healthDistrict &&
          other.serviceDescription == this.serviceDescription &&
          other.territory == this.territory &&
          other.sector == this.sector &&
          other.communityCenter == this.communityCenter &&
          other.community == this.community &&
          other.cui == this.cui &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName);
}

class FamilySheetDataFormCompanion
    extends UpdateCompanion<FamilySheetDataFormData> {
  final Value<int> id;
  final Value<String> latitude;
  final Value<String> longitude;
  final Value<String> address;
  final Value<int> departmentLocation;
  final Value<int> municipalityLocation;
  final Value<int> populatedPlace;
  final Value<int> healthArea;
  final Value<int> healthDistrict;
  final Value<int> serviceDescription;
  final Value<int> territory;
  final Value<int> sector;
  final Value<int> communityCenter;
  final Value<int> community;
  final Value<int> cui;
  final Value<String> firstName;
  final Value<String> lastName;
  const FamilySheetDataFormCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.address = const Value.absent(),
    this.departmentLocation = const Value.absent(),
    this.municipalityLocation = const Value.absent(),
    this.populatedPlace = const Value.absent(),
    this.healthArea = const Value.absent(),
    this.healthDistrict = const Value.absent(),
    this.serviceDescription = const Value.absent(),
    this.territory = const Value.absent(),
    this.sector = const Value.absent(),
    this.communityCenter = const Value.absent(),
    this.community = const Value.absent(),
    this.cui = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
  });
  FamilySheetDataFormCompanion.insert({
    this.id = const Value.absent(),
    required String latitude,
    required String longitude,
    required String address,
    required int departmentLocation,
    required int municipalityLocation,
    required int populatedPlace,
    required int healthArea,
    required int healthDistrict,
    required int serviceDescription,
    required int territory,
    required int sector,
    required int communityCenter,
    required int community,
    required int cui,
    required String firstName,
    required String lastName,
  })  : latitude = Value(latitude),
        longitude = Value(longitude),
        address = Value(address),
        departmentLocation = Value(departmentLocation),
        municipalityLocation = Value(municipalityLocation),
        populatedPlace = Value(populatedPlace),
        healthArea = Value(healthArea),
        healthDistrict = Value(healthDistrict),
        serviceDescription = Value(serviceDescription),
        territory = Value(territory),
        sector = Value(sector),
        communityCenter = Value(communityCenter),
        community = Value(community),
        cui = Value(cui),
        firstName = Value(firstName),
        lastName = Value(lastName);
  static Insertable<FamilySheetDataFormData> custom({
    Expression<int>? id,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<String>? address,
    Expression<int>? departmentLocation,
    Expression<int>? municipalityLocation,
    Expression<int>? populatedPlace,
    Expression<int>? healthArea,
    Expression<int>? healthDistrict,
    Expression<int>? serviceDescription,
    Expression<int>? territory,
    Expression<int>? sector,
    Expression<int>? communityCenter,
    Expression<int>? community,
    Expression<int>? cui,
    Expression<String>? firstName,
    Expression<String>? lastName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (address != null) 'address': address,
      if (departmentLocation != null) 'department_location': departmentLocation,
      if (municipalityLocation != null)
        'municipality_location': municipalityLocation,
      if (populatedPlace != null) 'populated_place': populatedPlace,
      if (healthArea != null) 'health_area': healthArea,
      if (healthDistrict != null) 'health_district': healthDistrict,
      if (serviceDescription != null) 'service_description': serviceDescription,
      if (territory != null) 'territory': territory,
      if (sector != null) 'sector': sector,
      if (communityCenter != null) 'community_center': communityCenter,
      if (community != null) 'community': community,
      if (cui != null) 'cui': cui,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
    });
  }

  FamilySheetDataFormCompanion copyWith(
      {Value<int>? id,
      Value<String>? latitude,
      Value<String>? longitude,
      Value<String>? address,
      Value<int>? departmentLocation,
      Value<int>? municipalityLocation,
      Value<int>? populatedPlace,
      Value<int>? healthArea,
      Value<int>? healthDistrict,
      Value<int>? serviceDescription,
      Value<int>? territory,
      Value<int>? sector,
      Value<int>? communityCenter,
      Value<int>? community,
      Value<int>? cui,
      Value<String>? firstName,
      Value<String>? lastName}) {
    return FamilySheetDataFormCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
      departmentLocation: departmentLocation ?? this.departmentLocation,
      municipalityLocation: municipalityLocation ?? this.municipalityLocation,
      populatedPlace: populatedPlace ?? this.populatedPlace,
      healthArea: healthArea ?? this.healthArea,
      healthDistrict: healthDistrict ?? this.healthDistrict,
      serviceDescription: serviceDescription ?? this.serviceDescription,
      territory: territory ?? this.territory,
      sector: sector ?? this.sector,
      communityCenter: communityCenter ?? this.communityCenter,
      community: community ?? this.community,
      cui: cui ?? this.cui,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (departmentLocation.present) {
      map['department_location'] = Variable<int>(departmentLocation.value);
    }
    if (municipalityLocation.present) {
      map['municipality_location'] = Variable<int>(municipalityLocation.value);
    }
    if (populatedPlace.present) {
      map['populated_place'] = Variable<int>(populatedPlace.value);
    }
    if (healthArea.present) {
      map['health_area'] = Variable<int>(healthArea.value);
    }
    if (healthDistrict.present) {
      map['health_district'] = Variable<int>(healthDistrict.value);
    }
    if (serviceDescription.present) {
      map['service_description'] = Variable<int>(serviceDescription.value);
    }
    if (territory.present) {
      map['territory'] = Variable<int>(territory.value);
    }
    if (sector.present) {
      map['sector'] = Variable<int>(sector.value);
    }
    if (communityCenter.present) {
      map['community_center'] = Variable<int>(communityCenter.value);
    }
    if (community.present) {
      map['community'] = Variable<int>(community.value);
    }
    if (cui.present) {
      map['cui'] = Variable<int>(cui.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilySheetDataFormCompanion(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address, ')
          ..write('departmentLocation: $departmentLocation, ')
          ..write('municipalityLocation: $municipalityLocation, ')
          ..write('populatedPlace: $populatedPlace, ')
          ..write('healthArea: $healthArea, ')
          ..write('healthDistrict: $healthDistrict, ')
          ..write('serviceDescription: $serviceDescription, ')
          ..write('territory: $territory, ')
          ..write('sector: $sector, ')
          ..write('communityCenter: $communityCenter, ')
          ..write('community: $community, ')
          ..write('cui: $cui, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName')
          ..write(')'))
        .toString();
  }
}

class $FamilySheetDataForm2Table extends FamilySheetDataForm2
    with TableInfo<$FamilySheetDataForm2Table, FamilySheetDataForm2Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilySheetDataForm2Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _housingStatusMeta =
      const VerificationMeta('housingStatus');
  @override
  late final GeneratedColumn<String> housingStatus = GeneratedColumn<String>(
      'housing_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _homeOwnershipMeta =
      const VerificationMeta('homeOwnership');
  @override
  late final GeneratedColumn<String> homeOwnership = GeneratedColumn<String>(
      'home_ownership', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _housingTypeMeta =
      const VerificationMeta('housingType');
  @override
  late final GeneratedColumn<String> housingType = GeneratedColumn<String>(
      'housing_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wallMaterialMeta =
      const VerificationMeta('wallMaterial');
  @override
  late final GeneratedColumn<String> wallMaterial = GeneratedColumn<String>(
      'wall_material', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _floorMaterialMeta =
      const VerificationMeta('floorMaterial');
  @override
  late final GeneratedColumn<String> floorMaterial = GeneratedColumn<String>(
      'floor_material', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sanitaryServiceTypeMeta =
      const VerificationMeta('sanitaryServiceType');
  @override
  late final GeneratedColumn<String> sanitaryServiceType =
      GeneratedColumn<String>('sanitary_service_type', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _waterConsumptionMeta =
      const VerificationMeta('waterConsumption');
  @override
  late final GeneratedColumn<String> waterConsumption = GeneratedColumn<String>(
      'water_consumption', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _toiletTypeMeta =
      const VerificationMeta('toiletType');
  @override
  late final GeneratedColumn<String> toiletType = GeneratedColumn<String>(
      'toilet_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _wasteWaterMeta =
      const VerificationMeta('wasteWater');
  @override
  late final GeneratedColumn<String> wasteWater = GeneratedColumn<String>(
      'waste_water', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _garbageTreatmentMeta =
      const VerificationMeta('garbageTreatment');
  @override
  late final GeneratedColumn<String> garbageTreatment = GeneratedColumn<String>(
      'garbage_treatment', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tenancyStatusMeta =
      const VerificationMeta('tenancyStatus');
  @override
  late final GeneratedColumn<String> tenancyStatus = GeneratedColumn<String>(
      'tenancy_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kitchenFuelMeta =
      const VerificationMeta('kitchenFuel');
  @override
  late final GeneratedColumn<String> kitchenFuel = GeneratedColumn<String>(
      'kitchen_fuel', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kitchenLocationMeta =
      const VerificationMeta('kitchenLocation');
  @override
  late final GeneratedColumn<String> kitchenLocation = GeneratedColumn<String>(
      'kitchen_location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kitchenTypeMeta =
      const VerificationMeta('kitchenType');
  @override
  late final GeneratedColumn<String> kitchenType = GeneratedColumn<String>(
      'kitchen_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _familySizeMeta =
      const VerificationMeta('familySize');
  @override
  late final GeneratedColumn<int> familySize = GeneratedColumn<int>(
      'family_size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _stagnantWaterRecipientMeta =
      const VerificationMeta('stagnantWaterRecipient');
  @override
  late final GeneratedColumn<String> stagnantWaterRecipient =
      GeneratedColumn<String>('stagnant_water_recipient', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberOfResidentsMeta =
      const VerificationMeta('numberOfResidents');
  @override
  late final GeneratedColumn<int> numberOfResidents = GeneratedColumn<int>(
      'number_of_residents', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _familySheetFormDataIdMeta =
      const VerificationMeta('familySheetFormDataId');
  @override
  late final GeneratedColumn<int> familySheetFormDataId = GeneratedColumn<int>(
      'family_sheet_form_data_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        housingStatus,
        homeOwnership,
        housingType,
        wallMaterial,
        floorMaterial,
        sanitaryServiceType,
        waterConsumption,
        toiletType,
        wasteWater,
        garbageTreatment,
        tenancyStatus,
        kitchenFuel,
        kitchenLocation,
        kitchenType,
        familySize,
        stagnantWaterRecipient,
        numberOfResidents,
        familySheetFormDataId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_sheet_data_form2';
  @override
  VerificationContext validateIntegrity(
      Insertable<FamilySheetDataForm2Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('housing_status')) {
      context.handle(
          _housingStatusMeta,
          housingStatus.isAcceptableOrUnknown(
              data['housing_status']!, _housingStatusMeta));
    } else if (isInserting) {
      context.missing(_housingStatusMeta);
    }
    if (data.containsKey('home_ownership')) {
      context.handle(
          _homeOwnershipMeta,
          homeOwnership.isAcceptableOrUnknown(
              data['home_ownership']!, _homeOwnershipMeta));
    } else if (isInserting) {
      context.missing(_homeOwnershipMeta);
    }
    if (data.containsKey('housing_type')) {
      context.handle(
          _housingTypeMeta,
          housingType.isAcceptableOrUnknown(
              data['housing_type']!, _housingTypeMeta));
    } else if (isInserting) {
      context.missing(_housingTypeMeta);
    }
    if (data.containsKey('wall_material')) {
      context.handle(
          _wallMaterialMeta,
          wallMaterial.isAcceptableOrUnknown(
              data['wall_material']!, _wallMaterialMeta));
    } else if (isInserting) {
      context.missing(_wallMaterialMeta);
    }
    if (data.containsKey('floor_material')) {
      context.handle(
          _floorMaterialMeta,
          floorMaterial.isAcceptableOrUnknown(
              data['floor_material']!, _floorMaterialMeta));
    } else if (isInserting) {
      context.missing(_floorMaterialMeta);
    }
    if (data.containsKey('sanitary_service_type')) {
      context.handle(
          _sanitaryServiceTypeMeta,
          sanitaryServiceType.isAcceptableOrUnknown(
              data['sanitary_service_type']!, _sanitaryServiceTypeMeta));
    } else if (isInserting) {
      context.missing(_sanitaryServiceTypeMeta);
    }
    if (data.containsKey('water_consumption')) {
      context.handle(
          _waterConsumptionMeta,
          waterConsumption.isAcceptableOrUnknown(
              data['water_consumption']!, _waterConsumptionMeta));
    } else if (isInserting) {
      context.missing(_waterConsumptionMeta);
    }
    if (data.containsKey('toilet_type')) {
      context.handle(
          _toiletTypeMeta,
          toiletType.isAcceptableOrUnknown(
              data['toilet_type']!, _toiletTypeMeta));
    } else if (isInserting) {
      context.missing(_toiletTypeMeta);
    }
    if (data.containsKey('waste_water')) {
      context.handle(
          _wasteWaterMeta,
          wasteWater.isAcceptableOrUnknown(
              data['waste_water']!, _wasteWaterMeta));
    } else if (isInserting) {
      context.missing(_wasteWaterMeta);
    }
    if (data.containsKey('garbage_treatment')) {
      context.handle(
          _garbageTreatmentMeta,
          garbageTreatment.isAcceptableOrUnknown(
              data['garbage_treatment']!, _garbageTreatmentMeta));
    } else if (isInserting) {
      context.missing(_garbageTreatmentMeta);
    }
    if (data.containsKey('tenancy_status')) {
      context.handle(
          _tenancyStatusMeta,
          tenancyStatus.isAcceptableOrUnknown(
              data['tenancy_status']!, _tenancyStatusMeta));
    } else if (isInserting) {
      context.missing(_tenancyStatusMeta);
    }
    if (data.containsKey('kitchen_fuel')) {
      context.handle(
          _kitchenFuelMeta,
          kitchenFuel.isAcceptableOrUnknown(
              data['kitchen_fuel']!, _kitchenFuelMeta));
    } else if (isInserting) {
      context.missing(_kitchenFuelMeta);
    }
    if (data.containsKey('kitchen_location')) {
      context.handle(
          _kitchenLocationMeta,
          kitchenLocation.isAcceptableOrUnknown(
              data['kitchen_location']!, _kitchenLocationMeta));
    } else if (isInserting) {
      context.missing(_kitchenLocationMeta);
    }
    if (data.containsKey('kitchen_type')) {
      context.handle(
          _kitchenTypeMeta,
          kitchenType.isAcceptableOrUnknown(
              data['kitchen_type']!, _kitchenTypeMeta));
    } else if (isInserting) {
      context.missing(_kitchenTypeMeta);
    }
    if (data.containsKey('family_size')) {
      context.handle(
          _familySizeMeta,
          familySize.isAcceptableOrUnknown(
              data['family_size']!, _familySizeMeta));
    } else if (isInserting) {
      context.missing(_familySizeMeta);
    }
    if (data.containsKey('stagnant_water_recipient')) {
      context.handle(
          _stagnantWaterRecipientMeta,
          stagnantWaterRecipient.isAcceptableOrUnknown(
              data['stagnant_water_recipient']!, _stagnantWaterRecipientMeta));
    } else if (isInserting) {
      context.missing(_stagnantWaterRecipientMeta);
    }
    if (data.containsKey('number_of_residents')) {
      context.handle(
          _numberOfResidentsMeta,
          numberOfResidents.isAcceptableOrUnknown(
              data['number_of_residents']!, _numberOfResidentsMeta));
    } else if (isInserting) {
      context.missing(_numberOfResidentsMeta);
    }
    if (data.containsKey('family_sheet_form_data_id')) {
      context.handle(
          _familySheetFormDataIdMeta,
          familySheetFormDataId.isAcceptableOrUnknown(
              data['family_sheet_form_data_id']!, _familySheetFormDataIdMeta));
    } else if (isInserting) {
      context.missing(_familySheetFormDataIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilySheetDataForm2Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilySheetDataForm2Data(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      housingStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}housing_status'])!,
      homeOwnership: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}home_ownership'])!,
      housingType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}housing_type'])!,
      wallMaterial: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}wall_material'])!,
      floorMaterial: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}floor_material'])!,
      sanitaryServiceType: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sanitary_service_type'])!,
      waterConsumption: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}water_consumption'])!,
      toiletType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}toilet_type'])!,
      wasteWater: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}waste_water'])!,
      garbageTreatment: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}garbage_treatment'])!,
      tenancyStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tenancy_status'])!,
      kitchenFuel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kitchen_fuel'])!,
      kitchenLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}kitchen_location'])!,
      kitchenType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kitchen_type'])!,
      familySize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}family_size'])!,
      stagnantWaterRecipient: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}stagnant_water_recipient'])!,
      numberOfResidents: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}number_of_residents'])!,
      familySheetFormDataId: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}family_sheet_form_data_id'])!,
    );
  }

  @override
  $FamilySheetDataForm2Table createAlias(String alias) {
    return $FamilySheetDataForm2Table(attachedDatabase, alias);
  }
}

class FamilySheetDataForm2Data extends DataClass
    implements Insertable<FamilySheetDataForm2Data> {
  final int id;
  final String housingStatus;
  final String homeOwnership;
  final String housingType;
  final String wallMaterial;
  final String floorMaterial;
  final String sanitaryServiceType;
  final String waterConsumption;
  final String toiletType;
  final String wasteWater;
  final String garbageTreatment;
  final String tenancyStatus;
  final String kitchenFuel;
  final String kitchenLocation;
  final String kitchenType;
  final int familySize;
  final String stagnantWaterRecipient;
  final int numberOfResidents;
  final int familySheetFormDataId;
  const FamilySheetDataForm2Data(
      {required this.id,
      required this.housingStatus,
      required this.homeOwnership,
      required this.housingType,
      required this.wallMaterial,
      required this.floorMaterial,
      required this.sanitaryServiceType,
      required this.waterConsumption,
      required this.toiletType,
      required this.wasteWater,
      required this.garbageTreatment,
      required this.tenancyStatus,
      required this.kitchenFuel,
      required this.kitchenLocation,
      required this.kitchenType,
      required this.familySize,
      required this.stagnantWaterRecipient,
      required this.numberOfResidents,
      required this.familySheetFormDataId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['housing_status'] = Variable<String>(housingStatus);
    map['home_ownership'] = Variable<String>(homeOwnership);
    map['housing_type'] = Variable<String>(housingType);
    map['wall_material'] = Variable<String>(wallMaterial);
    map['floor_material'] = Variable<String>(floorMaterial);
    map['sanitary_service_type'] = Variable<String>(sanitaryServiceType);
    map['water_consumption'] = Variable<String>(waterConsumption);
    map['toilet_type'] = Variable<String>(toiletType);
    map['waste_water'] = Variable<String>(wasteWater);
    map['garbage_treatment'] = Variable<String>(garbageTreatment);
    map['tenancy_status'] = Variable<String>(tenancyStatus);
    map['kitchen_fuel'] = Variable<String>(kitchenFuel);
    map['kitchen_location'] = Variable<String>(kitchenLocation);
    map['kitchen_type'] = Variable<String>(kitchenType);
    map['family_size'] = Variable<int>(familySize);
    map['stagnant_water_recipient'] = Variable<String>(stagnantWaterRecipient);
    map['number_of_residents'] = Variable<int>(numberOfResidents);
    map['family_sheet_form_data_id'] = Variable<int>(familySheetFormDataId);
    return map;
  }

  FamilySheetDataForm2Companion toCompanion(bool nullToAbsent) {
    return FamilySheetDataForm2Companion(
      id: Value(id),
      housingStatus: Value(housingStatus),
      homeOwnership: Value(homeOwnership),
      housingType: Value(housingType),
      wallMaterial: Value(wallMaterial),
      floorMaterial: Value(floorMaterial),
      sanitaryServiceType: Value(sanitaryServiceType),
      waterConsumption: Value(waterConsumption),
      toiletType: Value(toiletType),
      wasteWater: Value(wasteWater),
      garbageTreatment: Value(garbageTreatment),
      tenancyStatus: Value(tenancyStatus),
      kitchenFuel: Value(kitchenFuel),
      kitchenLocation: Value(kitchenLocation),
      kitchenType: Value(kitchenType),
      familySize: Value(familySize),
      stagnantWaterRecipient: Value(stagnantWaterRecipient),
      numberOfResidents: Value(numberOfResidents),
      familySheetFormDataId: Value(familySheetFormDataId),
    );
  }

  factory FamilySheetDataForm2Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilySheetDataForm2Data(
      id: serializer.fromJson<int>(json['id']),
      housingStatus: serializer.fromJson<String>(json['housingStatus']),
      homeOwnership: serializer.fromJson<String>(json['homeOwnership']),
      housingType: serializer.fromJson<String>(json['housingType']),
      wallMaterial: serializer.fromJson<String>(json['wallMaterial']),
      floorMaterial: serializer.fromJson<String>(json['floorMaterial']),
      sanitaryServiceType:
          serializer.fromJson<String>(json['sanitaryServiceType']),
      waterConsumption: serializer.fromJson<String>(json['waterConsumption']),
      toiletType: serializer.fromJson<String>(json['toiletType']),
      wasteWater: serializer.fromJson<String>(json['wasteWater']),
      garbageTreatment: serializer.fromJson<String>(json['garbageTreatment']),
      tenancyStatus: serializer.fromJson<String>(json['tenancyStatus']),
      kitchenFuel: serializer.fromJson<String>(json['kitchenFuel']),
      kitchenLocation: serializer.fromJson<String>(json['kitchenLocation']),
      kitchenType: serializer.fromJson<String>(json['kitchenType']),
      familySize: serializer.fromJson<int>(json['familySize']),
      stagnantWaterRecipient:
          serializer.fromJson<String>(json['stagnantWaterRecipient']),
      numberOfResidents: serializer.fromJson<int>(json['numberOfResidents']),
      familySheetFormDataId:
          serializer.fromJson<int>(json['familySheetFormDataId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'housingStatus': serializer.toJson<String>(housingStatus),
      'homeOwnership': serializer.toJson<String>(homeOwnership),
      'housingType': serializer.toJson<String>(housingType),
      'wallMaterial': serializer.toJson<String>(wallMaterial),
      'floorMaterial': serializer.toJson<String>(floorMaterial),
      'sanitaryServiceType': serializer.toJson<String>(sanitaryServiceType),
      'waterConsumption': serializer.toJson<String>(waterConsumption),
      'toiletType': serializer.toJson<String>(toiletType),
      'wasteWater': serializer.toJson<String>(wasteWater),
      'garbageTreatment': serializer.toJson<String>(garbageTreatment),
      'tenancyStatus': serializer.toJson<String>(tenancyStatus),
      'kitchenFuel': serializer.toJson<String>(kitchenFuel),
      'kitchenLocation': serializer.toJson<String>(kitchenLocation),
      'kitchenType': serializer.toJson<String>(kitchenType),
      'familySize': serializer.toJson<int>(familySize),
      'stagnantWaterRecipient':
          serializer.toJson<String>(stagnantWaterRecipient),
      'numberOfResidents': serializer.toJson<int>(numberOfResidents),
      'familySheetFormDataId': serializer.toJson<int>(familySheetFormDataId),
    };
  }

  FamilySheetDataForm2Data copyWith(
          {int? id,
          String? housingStatus,
          String? homeOwnership,
          String? housingType,
          String? wallMaterial,
          String? floorMaterial,
          String? sanitaryServiceType,
          String? waterConsumption,
          String? toiletType,
          String? wasteWater,
          String? garbageTreatment,
          String? tenancyStatus,
          String? kitchenFuel,
          String? kitchenLocation,
          String? kitchenType,
          int? familySize,
          String? stagnantWaterRecipient,
          int? numberOfResidents,
          int? familySheetFormDataId}) =>
      FamilySheetDataForm2Data(
        id: id ?? this.id,
        housingStatus: housingStatus ?? this.housingStatus,
        homeOwnership: homeOwnership ?? this.homeOwnership,
        housingType: housingType ?? this.housingType,
        wallMaterial: wallMaterial ?? this.wallMaterial,
        floorMaterial: floorMaterial ?? this.floorMaterial,
        sanitaryServiceType: sanitaryServiceType ?? this.sanitaryServiceType,
        waterConsumption: waterConsumption ?? this.waterConsumption,
        toiletType: toiletType ?? this.toiletType,
        wasteWater: wasteWater ?? this.wasteWater,
        garbageTreatment: garbageTreatment ?? this.garbageTreatment,
        tenancyStatus: tenancyStatus ?? this.tenancyStatus,
        kitchenFuel: kitchenFuel ?? this.kitchenFuel,
        kitchenLocation: kitchenLocation ?? this.kitchenLocation,
        kitchenType: kitchenType ?? this.kitchenType,
        familySize: familySize ?? this.familySize,
        stagnantWaterRecipient:
            stagnantWaterRecipient ?? this.stagnantWaterRecipient,
        numberOfResidents: numberOfResidents ?? this.numberOfResidents,
        familySheetFormDataId:
            familySheetFormDataId ?? this.familySheetFormDataId,
      );
  @override
  String toString() {
    return (StringBuffer('FamilySheetDataForm2Data(')
          ..write('id: $id, ')
          ..write('housingStatus: $housingStatus, ')
          ..write('homeOwnership: $homeOwnership, ')
          ..write('housingType: $housingType, ')
          ..write('wallMaterial: $wallMaterial, ')
          ..write('floorMaterial: $floorMaterial, ')
          ..write('sanitaryServiceType: $sanitaryServiceType, ')
          ..write('waterConsumption: $waterConsumption, ')
          ..write('toiletType: $toiletType, ')
          ..write('wasteWater: $wasteWater, ')
          ..write('garbageTreatment: $garbageTreatment, ')
          ..write('tenancyStatus: $tenancyStatus, ')
          ..write('kitchenFuel: $kitchenFuel, ')
          ..write('kitchenLocation: $kitchenLocation, ')
          ..write('kitchenType: $kitchenType, ')
          ..write('familySize: $familySize, ')
          ..write('stagnantWaterRecipient: $stagnantWaterRecipient, ')
          ..write('numberOfResidents: $numberOfResidents, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      housingStatus,
      homeOwnership,
      housingType,
      wallMaterial,
      floorMaterial,
      sanitaryServiceType,
      waterConsumption,
      toiletType,
      wasteWater,
      garbageTreatment,
      tenancyStatus,
      kitchenFuel,
      kitchenLocation,
      kitchenType,
      familySize,
      stagnantWaterRecipient,
      numberOfResidents,
      familySheetFormDataId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilySheetDataForm2Data &&
          other.id == this.id &&
          other.housingStatus == this.housingStatus &&
          other.homeOwnership == this.homeOwnership &&
          other.housingType == this.housingType &&
          other.wallMaterial == this.wallMaterial &&
          other.floorMaterial == this.floorMaterial &&
          other.sanitaryServiceType == this.sanitaryServiceType &&
          other.waterConsumption == this.waterConsumption &&
          other.toiletType == this.toiletType &&
          other.wasteWater == this.wasteWater &&
          other.garbageTreatment == this.garbageTreatment &&
          other.tenancyStatus == this.tenancyStatus &&
          other.kitchenFuel == this.kitchenFuel &&
          other.kitchenLocation == this.kitchenLocation &&
          other.kitchenType == this.kitchenType &&
          other.familySize == this.familySize &&
          other.stagnantWaterRecipient == this.stagnantWaterRecipient &&
          other.numberOfResidents == this.numberOfResidents &&
          other.familySheetFormDataId == this.familySheetFormDataId);
}

class FamilySheetDataForm2Companion
    extends UpdateCompanion<FamilySheetDataForm2Data> {
  final Value<int> id;
  final Value<String> housingStatus;
  final Value<String> homeOwnership;
  final Value<String> housingType;
  final Value<String> wallMaterial;
  final Value<String> floorMaterial;
  final Value<String> sanitaryServiceType;
  final Value<String> waterConsumption;
  final Value<String> toiletType;
  final Value<String> wasteWater;
  final Value<String> garbageTreatment;
  final Value<String> tenancyStatus;
  final Value<String> kitchenFuel;
  final Value<String> kitchenLocation;
  final Value<String> kitchenType;
  final Value<int> familySize;
  final Value<String> stagnantWaterRecipient;
  final Value<int> numberOfResidents;
  final Value<int> familySheetFormDataId;
  const FamilySheetDataForm2Companion({
    this.id = const Value.absent(),
    this.housingStatus = const Value.absent(),
    this.homeOwnership = const Value.absent(),
    this.housingType = const Value.absent(),
    this.wallMaterial = const Value.absent(),
    this.floorMaterial = const Value.absent(),
    this.sanitaryServiceType = const Value.absent(),
    this.waterConsumption = const Value.absent(),
    this.toiletType = const Value.absent(),
    this.wasteWater = const Value.absent(),
    this.garbageTreatment = const Value.absent(),
    this.tenancyStatus = const Value.absent(),
    this.kitchenFuel = const Value.absent(),
    this.kitchenLocation = const Value.absent(),
    this.kitchenType = const Value.absent(),
    this.familySize = const Value.absent(),
    this.stagnantWaterRecipient = const Value.absent(),
    this.numberOfResidents = const Value.absent(),
    this.familySheetFormDataId = const Value.absent(),
  });
  FamilySheetDataForm2Companion.insert({
    this.id = const Value.absent(),
    required String housingStatus,
    required String homeOwnership,
    required String housingType,
    required String wallMaterial,
    required String floorMaterial,
    required String sanitaryServiceType,
    required String waterConsumption,
    required String toiletType,
    required String wasteWater,
    required String garbageTreatment,
    required String tenancyStatus,
    required String kitchenFuel,
    required String kitchenLocation,
    required String kitchenType,
    required int familySize,
    required String stagnantWaterRecipient,
    required int numberOfResidents,
    required int familySheetFormDataId,
  })  : housingStatus = Value(housingStatus),
        homeOwnership = Value(homeOwnership),
        housingType = Value(housingType),
        wallMaterial = Value(wallMaterial),
        floorMaterial = Value(floorMaterial),
        sanitaryServiceType = Value(sanitaryServiceType),
        waterConsumption = Value(waterConsumption),
        toiletType = Value(toiletType),
        wasteWater = Value(wasteWater),
        garbageTreatment = Value(garbageTreatment),
        tenancyStatus = Value(tenancyStatus),
        kitchenFuel = Value(kitchenFuel),
        kitchenLocation = Value(kitchenLocation),
        kitchenType = Value(kitchenType),
        familySize = Value(familySize),
        stagnantWaterRecipient = Value(stagnantWaterRecipient),
        numberOfResidents = Value(numberOfResidents),
        familySheetFormDataId = Value(familySheetFormDataId);
  static Insertable<FamilySheetDataForm2Data> custom({
    Expression<int>? id,
    Expression<String>? housingStatus,
    Expression<String>? homeOwnership,
    Expression<String>? housingType,
    Expression<String>? wallMaterial,
    Expression<String>? floorMaterial,
    Expression<String>? sanitaryServiceType,
    Expression<String>? waterConsumption,
    Expression<String>? toiletType,
    Expression<String>? wasteWater,
    Expression<String>? garbageTreatment,
    Expression<String>? tenancyStatus,
    Expression<String>? kitchenFuel,
    Expression<String>? kitchenLocation,
    Expression<String>? kitchenType,
    Expression<int>? familySize,
    Expression<String>? stagnantWaterRecipient,
    Expression<int>? numberOfResidents,
    Expression<int>? familySheetFormDataId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (housingStatus != null) 'housing_status': housingStatus,
      if (homeOwnership != null) 'home_ownership': homeOwnership,
      if (housingType != null) 'housing_type': housingType,
      if (wallMaterial != null) 'wall_material': wallMaterial,
      if (floorMaterial != null) 'floor_material': floorMaterial,
      if (sanitaryServiceType != null)
        'sanitary_service_type': sanitaryServiceType,
      if (waterConsumption != null) 'water_consumption': waterConsumption,
      if (toiletType != null) 'toilet_type': toiletType,
      if (wasteWater != null) 'waste_water': wasteWater,
      if (garbageTreatment != null) 'garbage_treatment': garbageTreatment,
      if (tenancyStatus != null) 'tenancy_status': tenancyStatus,
      if (kitchenFuel != null) 'kitchen_fuel': kitchenFuel,
      if (kitchenLocation != null) 'kitchen_location': kitchenLocation,
      if (kitchenType != null) 'kitchen_type': kitchenType,
      if (familySize != null) 'family_size': familySize,
      if (stagnantWaterRecipient != null)
        'stagnant_water_recipient': stagnantWaterRecipient,
      if (numberOfResidents != null) 'number_of_residents': numberOfResidents,
      if (familySheetFormDataId != null)
        'family_sheet_form_data_id': familySheetFormDataId,
    });
  }

  FamilySheetDataForm2Companion copyWith(
      {Value<int>? id,
      Value<String>? housingStatus,
      Value<String>? homeOwnership,
      Value<String>? housingType,
      Value<String>? wallMaterial,
      Value<String>? floorMaterial,
      Value<String>? sanitaryServiceType,
      Value<String>? waterConsumption,
      Value<String>? toiletType,
      Value<String>? wasteWater,
      Value<String>? garbageTreatment,
      Value<String>? tenancyStatus,
      Value<String>? kitchenFuel,
      Value<String>? kitchenLocation,
      Value<String>? kitchenType,
      Value<int>? familySize,
      Value<String>? stagnantWaterRecipient,
      Value<int>? numberOfResidents,
      Value<int>? familySheetFormDataId}) {
    return FamilySheetDataForm2Companion(
      id: id ?? this.id,
      housingStatus: housingStatus ?? this.housingStatus,
      homeOwnership: homeOwnership ?? this.homeOwnership,
      housingType: housingType ?? this.housingType,
      wallMaterial: wallMaterial ?? this.wallMaterial,
      floorMaterial: floorMaterial ?? this.floorMaterial,
      sanitaryServiceType: sanitaryServiceType ?? this.sanitaryServiceType,
      waterConsumption: waterConsumption ?? this.waterConsumption,
      toiletType: toiletType ?? this.toiletType,
      wasteWater: wasteWater ?? this.wasteWater,
      garbageTreatment: garbageTreatment ?? this.garbageTreatment,
      tenancyStatus: tenancyStatus ?? this.tenancyStatus,
      kitchenFuel: kitchenFuel ?? this.kitchenFuel,
      kitchenLocation: kitchenLocation ?? this.kitchenLocation,
      kitchenType: kitchenType ?? this.kitchenType,
      familySize: familySize ?? this.familySize,
      stagnantWaterRecipient:
          stagnantWaterRecipient ?? this.stagnantWaterRecipient,
      numberOfResidents: numberOfResidents ?? this.numberOfResidents,
      familySheetFormDataId:
          familySheetFormDataId ?? this.familySheetFormDataId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (housingStatus.present) {
      map['housing_status'] = Variable<String>(housingStatus.value);
    }
    if (homeOwnership.present) {
      map['home_ownership'] = Variable<String>(homeOwnership.value);
    }
    if (housingType.present) {
      map['housing_type'] = Variable<String>(housingType.value);
    }
    if (wallMaterial.present) {
      map['wall_material'] = Variable<String>(wallMaterial.value);
    }
    if (floorMaterial.present) {
      map['floor_material'] = Variable<String>(floorMaterial.value);
    }
    if (sanitaryServiceType.present) {
      map['sanitary_service_type'] =
          Variable<String>(sanitaryServiceType.value);
    }
    if (waterConsumption.present) {
      map['water_consumption'] = Variable<String>(waterConsumption.value);
    }
    if (toiletType.present) {
      map['toilet_type'] = Variable<String>(toiletType.value);
    }
    if (wasteWater.present) {
      map['waste_water'] = Variable<String>(wasteWater.value);
    }
    if (garbageTreatment.present) {
      map['garbage_treatment'] = Variable<String>(garbageTreatment.value);
    }
    if (tenancyStatus.present) {
      map['tenancy_status'] = Variable<String>(tenancyStatus.value);
    }
    if (kitchenFuel.present) {
      map['kitchen_fuel'] = Variable<String>(kitchenFuel.value);
    }
    if (kitchenLocation.present) {
      map['kitchen_location'] = Variable<String>(kitchenLocation.value);
    }
    if (kitchenType.present) {
      map['kitchen_type'] = Variable<String>(kitchenType.value);
    }
    if (familySize.present) {
      map['family_size'] = Variable<int>(familySize.value);
    }
    if (stagnantWaterRecipient.present) {
      map['stagnant_water_recipient'] =
          Variable<String>(stagnantWaterRecipient.value);
    }
    if (numberOfResidents.present) {
      map['number_of_residents'] = Variable<int>(numberOfResidents.value);
    }
    if (familySheetFormDataId.present) {
      map['family_sheet_form_data_id'] =
          Variable<int>(familySheetFormDataId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilySheetDataForm2Companion(')
          ..write('id: $id, ')
          ..write('housingStatus: $housingStatus, ')
          ..write('homeOwnership: $homeOwnership, ')
          ..write('housingType: $housingType, ')
          ..write('wallMaterial: $wallMaterial, ')
          ..write('floorMaterial: $floorMaterial, ')
          ..write('sanitaryServiceType: $sanitaryServiceType, ')
          ..write('waterConsumption: $waterConsumption, ')
          ..write('toiletType: $toiletType, ')
          ..write('wasteWater: $wasteWater, ')
          ..write('garbageTreatment: $garbageTreatment, ')
          ..write('tenancyStatus: $tenancyStatus, ')
          ..write('kitchenFuel: $kitchenFuel, ')
          ..write('kitchenLocation: $kitchenLocation, ')
          ..write('kitchenType: $kitchenType, ')
          ..write('familySize: $familySize, ')
          ..write('stagnantWaterRecipient: $stagnantWaterRecipient, ')
          ..write('numberOfResidents: $numberOfResidents, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }
}

class $FamilySheetDataForm3Table extends FamilySheetDataForm3
    with TableInfo<$FamilySheetDataForm3Table, FamilySheetDataForm3Data> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilySheetDataForm3Table(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _roomCountMeta =
      const VerificationMeta('roomCount');
  @override
  late final GeneratedColumn<int> roomCount = GeneratedColumn<int>(
      'room_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _bedroomCountMeta =
      const VerificationMeta('bedroomCount');
  @override
  late final GeneratedColumn<int> bedroomCount = GeneratedColumn<int>(
      'bedroom_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _familySheetFormDataIdMeta =
      const VerificationMeta('familySheetFormDataId');
  @override
  late final GeneratedColumn<int> familySheetFormDataId = GeneratedColumn<int>(
      'family_sheet_form_data_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, roomCount, bedroomCount, familySheetFormDataId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_sheet_data_form3';
  @override
  VerificationContext validateIntegrity(
      Insertable<FamilySheetDataForm3Data> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('room_count')) {
      context.handle(_roomCountMeta,
          roomCount.isAcceptableOrUnknown(data['room_count']!, _roomCountMeta));
    } else if (isInserting) {
      context.missing(_roomCountMeta);
    }
    if (data.containsKey('bedroom_count')) {
      context.handle(
          _bedroomCountMeta,
          bedroomCount.isAcceptableOrUnknown(
              data['bedroom_count']!, _bedroomCountMeta));
    } else if (isInserting) {
      context.missing(_bedroomCountMeta);
    }
    if (data.containsKey('family_sheet_form_data_id')) {
      context.handle(
          _familySheetFormDataIdMeta,
          familySheetFormDataId.isAcceptableOrUnknown(
              data['family_sheet_form_data_id']!, _familySheetFormDataIdMeta));
    } else if (isInserting) {
      context.missing(_familySheetFormDataIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilySheetDataForm3Data map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilySheetDataForm3Data(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      roomCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}room_count'])!,
      bedroomCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}bedroom_count'])!,
      familySheetFormDataId: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}family_sheet_form_data_id'])!,
    );
  }

  @override
  $FamilySheetDataForm3Table createAlias(String alias) {
    return $FamilySheetDataForm3Table(attachedDatabase, alias);
  }
}

class FamilySheetDataForm3Data extends DataClass
    implements Insertable<FamilySheetDataForm3Data> {
  final int id;
  final int roomCount;
  final int bedroomCount;
  final int familySheetFormDataId;
  const FamilySheetDataForm3Data(
      {required this.id,
      required this.roomCount,
      required this.bedroomCount,
      required this.familySheetFormDataId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['room_count'] = Variable<int>(roomCount);
    map['bedroom_count'] = Variable<int>(bedroomCount);
    map['family_sheet_form_data_id'] = Variable<int>(familySheetFormDataId);
    return map;
  }

  FamilySheetDataForm3Companion toCompanion(bool nullToAbsent) {
    return FamilySheetDataForm3Companion(
      id: Value(id),
      roomCount: Value(roomCount),
      bedroomCount: Value(bedroomCount),
      familySheetFormDataId: Value(familySheetFormDataId),
    );
  }

  factory FamilySheetDataForm3Data.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilySheetDataForm3Data(
      id: serializer.fromJson<int>(json['id']),
      roomCount: serializer.fromJson<int>(json['roomCount']),
      bedroomCount: serializer.fromJson<int>(json['bedroomCount']),
      familySheetFormDataId:
          serializer.fromJson<int>(json['familySheetFormDataId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'roomCount': serializer.toJson<int>(roomCount),
      'bedroomCount': serializer.toJson<int>(bedroomCount),
      'familySheetFormDataId': serializer.toJson<int>(familySheetFormDataId),
    };
  }

  FamilySheetDataForm3Data copyWith(
          {int? id,
          int? roomCount,
          int? bedroomCount,
          int? familySheetFormDataId}) =>
      FamilySheetDataForm3Data(
        id: id ?? this.id,
        roomCount: roomCount ?? this.roomCount,
        bedroomCount: bedroomCount ?? this.bedroomCount,
        familySheetFormDataId:
            familySheetFormDataId ?? this.familySheetFormDataId,
      );
  @override
  String toString() {
    return (StringBuffer('FamilySheetDataForm3Data(')
          ..write('id: $id, ')
          ..write('roomCount: $roomCount, ')
          ..write('bedroomCount: $bedroomCount, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, roomCount, bedroomCount, familySheetFormDataId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilySheetDataForm3Data &&
          other.id == this.id &&
          other.roomCount == this.roomCount &&
          other.bedroomCount == this.bedroomCount &&
          other.familySheetFormDataId == this.familySheetFormDataId);
}

class FamilySheetDataForm3Companion
    extends UpdateCompanion<FamilySheetDataForm3Data> {
  final Value<int> id;
  final Value<int> roomCount;
  final Value<int> bedroomCount;
  final Value<int> familySheetFormDataId;
  const FamilySheetDataForm3Companion({
    this.id = const Value.absent(),
    this.roomCount = const Value.absent(),
    this.bedroomCount = const Value.absent(),
    this.familySheetFormDataId = const Value.absent(),
  });
  FamilySheetDataForm3Companion.insert({
    this.id = const Value.absent(),
    required int roomCount,
    required int bedroomCount,
    required int familySheetFormDataId,
  })  : roomCount = Value(roomCount),
        bedroomCount = Value(bedroomCount),
        familySheetFormDataId = Value(familySheetFormDataId);
  static Insertable<FamilySheetDataForm3Data> custom({
    Expression<int>? id,
    Expression<int>? roomCount,
    Expression<int>? bedroomCount,
    Expression<int>? familySheetFormDataId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (roomCount != null) 'room_count': roomCount,
      if (bedroomCount != null) 'bedroom_count': bedroomCount,
      if (familySheetFormDataId != null)
        'family_sheet_form_data_id': familySheetFormDataId,
    });
  }

  FamilySheetDataForm3Companion copyWith(
      {Value<int>? id,
      Value<int>? roomCount,
      Value<int>? bedroomCount,
      Value<int>? familySheetFormDataId}) {
    return FamilySheetDataForm3Companion(
      id: id ?? this.id,
      roomCount: roomCount ?? this.roomCount,
      bedroomCount: bedroomCount ?? this.bedroomCount,
      familySheetFormDataId:
          familySheetFormDataId ?? this.familySheetFormDataId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (roomCount.present) {
      map['room_count'] = Variable<int>(roomCount.value);
    }
    if (bedroomCount.present) {
      map['bedroom_count'] = Variable<int>(bedroomCount.value);
    }
    if (familySheetFormDataId.present) {
      map['family_sheet_form_data_id'] =
          Variable<int>(familySheetFormDataId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilySheetDataForm3Companion(')
          ..write('id: $id, ')
          ..write('roomCount: $roomCount, ')
          ..write('bedroomCount: $bedroomCount, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }
}

class $PetDetailsTable extends PetDetails
    with TableInfo<$PetDetailsTable, PetDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PetDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _petTypeIdMeta =
      const VerificationMeta('petTypeId');
  @override
  late final GeneratedColumn<int> petTypeId = GeneratedColumn<int>(
      'pet_type_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _petCountMeta =
      const VerificationMeta('petCount');
  @override
  late final GeneratedColumn<int> petCount = GeneratedColumn<int>(
      'pet_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _adequateConditionsMeta =
      const VerificationMeta('adequateConditions');
  @override
  late final GeneratedColumn<bool> adequateConditions = GeneratedColumn<bool>(
      'adequate_conditions', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("adequate_conditions" IN (0, 1))'));
  static const VerificationMeta _vaccinatedMeta =
      const VerificationMeta('vaccinated');
  @override
  late final GeneratedColumn<bool> vaccinated = GeneratedColumn<bool>(
      'vaccinated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("vaccinated" IN (0, 1))'));
  static const VerificationMeta _livesInsideMeta =
      const VerificationMeta('livesInside');
  @override
  late final GeneratedColumn<bool> livesInside = GeneratedColumn<bool>(
      'lives_inside', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("lives_inside" IN (0, 1))'));
  static const VerificationMeta _familySheetFormDataIdMeta =
      const VerificationMeta('familySheetFormDataId');
  @override
  late final GeneratedColumn<int> familySheetFormDataId = GeneratedColumn<int>(
      'family_sheet_form_data_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        petTypeId,
        petCount,
        adequateConditions,
        vaccinated,
        livesInside,
        familySheetFormDataId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pet_details';
  @override
  VerificationContext validateIntegrity(Insertable<PetDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pet_type_id')) {
      context.handle(
          _petTypeIdMeta,
          petTypeId.isAcceptableOrUnknown(
              data['pet_type_id']!, _petTypeIdMeta));
    } else if (isInserting) {
      context.missing(_petTypeIdMeta);
    }
    if (data.containsKey('pet_count')) {
      context.handle(_petCountMeta,
          petCount.isAcceptableOrUnknown(data['pet_count']!, _petCountMeta));
    } else if (isInserting) {
      context.missing(_petCountMeta);
    }
    if (data.containsKey('adequate_conditions')) {
      context.handle(
          _adequateConditionsMeta,
          adequateConditions.isAcceptableOrUnknown(
              data['adequate_conditions']!, _adequateConditionsMeta));
    } else if (isInserting) {
      context.missing(_adequateConditionsMeta);
    }
    if (data.containsKey('vaccinated')) {
      context.handle(
          _vaccinatedMeta,
          vaccinated.isAcceptableOrUnknown(
              data['vaccinated']!, _vaccinatedMeta));
    } else if (isInserting) {
      context.missing(_vaccinatedMeta);
    }
    if (data.containsKey('lives_inside')) {
      context.handle(
          _livesInsideMeta,
          livesInside.isAcceptableOrUnknown(
              data['lives_inside']!, _livesInsideMeta));
    } else if (isInserting) {
      context.missing(_livesInsideMeta);
    }
    if (data.containsKey('family_sheet_form_data_id')) {
      context.handle(
          _familySheetFormDataIdMeta,
          familySheetFormDataId.isAcceptableOrUnknown(
              data['family_sheet_form_data_id']!, _familySheetFormDataIdMeta));
    } else if (isInserting) {
      context.missing(_familySheetFormDataIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PetDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PetDetail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      petTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pet_type_id'])!,
      petCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pet_count'])!,
      adequateConditions: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}adequate_conditions'])!,
      vaccinated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}vaccinated'])!,
      livesInside: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}lives_inside'])!,
      familySheetFormDataId: attachedDatabase.typeMapping.read(DriftSqlType.int,
          data['${effectivePrefix}family_sheet_form_data_id'])!,
    );
  }

  @override
  $PetDetailsTable createAlias(String alias) {
    return $PetDetailsTable(attachedDatabase, alias);
  }
}

class PetDetail extends DataClass implements Insertable<PetDetail> {
  final int id;
  final int petTypeId;
  final int petCount;
  final bool adequateConditions;
  final bool vaccinated;
  final bool livesInside;
  final int familySheetFormDataId;
  const PetDetail(
      {required this.id,
      required this.petTypeId,
      required this.petCount,
      required this.adequateConditions,
      required this.vaccinated,
      required this.livesInside,
      required this.familySheetFormDataId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pet_type_id'] = Variable<int>(petTypeId);
    map['pet_count'] = Variable<int>(petCount);
    map['adequate_conditions'] = Variable<bool>(adequateConditions);
    map['vaccinated'] = Variable<bool>(vaccinated);
    map['lives_inside'] = Variable<bool>(livesInside);
    map['family_sheet_form_data_id'] = Variable<int>(familySheetFormDataId);
    return map;
  }

  PetDetailsCompanion toCompanion(bool nullToAbsent) {
    return PetDetailsCompanion(
      id: Value(id),
      petTypeId: Value(petTypeId),
      petCount: Value(petCount),
      adequateConditions: Value(adequateConditions),
      vaccinated: Value(vaccinated),
      livesInside: Value(livesInside),
      familySheetFormDataId: Value(familySheetFormDataId),
    );
  }

  factory PetDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PetDetail(
      id: serializer.fromJson<int>(json['id']),
      petTypeId: serializer.fromJson<int>(json['petTypeId']),
      petCount: serializer.fromJson<int>(json['petCount']),
      adequateConditions: serializer.fromJson<bool>(json['adequateConditions']),
      vaccinated: serializer.fromJson<bool>(json['vaccinated']),
      livesInside: serializer.fromJson<bool>(json['livesInside']),
      familySheetFormDataId:
          serializer.fromJson<int>(json['familySheetFormDataId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'petTypeId': serializer.toJson<int>(petTypeId),
      'petCount': serializer.toJson<int>(petCount),
      'adequateConditions': serializer.toJson<bool>(adequateConditions),
      'vaccinated': serializer.toJson<bool>(vaccinated),
      'livesInside': serializer.toJson<bool>(livesInside),
      'familySheetFormDataId': serializer.toJson<int>(familySheetFormDataId),
    };
  }

  PetDetail copyWith(
          {int? id,
          int? petTypeId,
          int? petCount,
          bool? adequateConditions,
          bool? vaccinated,
          bool? livesInside,
          int? familySheetFormDataId}) =>
      PetDetail(
        id: id ?? this.id,
        petTypeId: petTypeId ?? this.petTypeId,
        petCount: petCount ?? this.petCount,
        adequateConditions: adequateConditions ?? this.adequateConditions,
        vaccinated: vaccinated ?? this.vaccinated,
        livesInside: livesInside ?? this.livesInside,
        familySheetFormDataId:
            familySheetFormDataId ?? this.familySheetFormDataId,
      );
  @override
  String toString() {
    return (StringBuffer('PetDetail(')
          ..write('id: $id, ')
          ..write('petTypeId: $petTypeId, ')
          ..write('petCount: $petCount, ')
          ..write('adequateConditions: $adequateConditions, ')
          ..write('vaccinated: $vaccinated, ')
          ..write('livesInside: $livesInside, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, petTypeId, petCount, adequateConditions,
      vaccinated, livesInside, familySheetFormDataId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PetDetail &&
          other.id == this.id &&
          other.petTypeId == this.petTypeId &&
          other.petCount == this.petCount &&
          other.adequateConditions == this.adequateConditions &&
          other.vaccinated == this.vaccinated &&
          other.livesInside == this.livesInside &&
          other.familySheetFormDataId == this.familySheetFormDataId);
}

class PetDetailsCompanion extends UpdateCompanion<PetDetail> {
  final Value<int> id;
  final Value<int> petTypeId;
  final Value<int> petCount;
  final Value<bool> adequateConditions;
  final Value<bool> vaccinated;
  final Value<bool> livesInside;
  final Value<int> familySheetFormDataId;
  const PetDetailsCompanion({
    this.id = const Value.absent(),
    this.petTypeId = const Value.absent(),
    this.petCount = const Value.absent(),
    this.adequateConditions = const Value.absent(),
    this.vaccinated = const Value.absent(),
    this.livesInside = const Value.absent(),
    this.familySheetFormDataId = const Value.absent(),
  });
  PetDetailsCompanion.insert({
    this.id = const Value.absent(),
    required int petTypeId,
    required int petCount,
    required bool adequateConditions,
    required bool vaccinated,
    required bool livesInside,
    required int familySheetFormDataId,
  })  : petTypeId = Value(petTypeId),
        petCount = Value(petCount),
        adequateConditions = Value(adequateConditions),
        vaccinated = Value(vaccinated),
        livesInside = Value(livesInside),
        familySheetFormDataId = Value(familySheetFormDataId);
  static Insertable<PetDetail> custom({
    Expression<int>? id,
    Expression<int>? petTypeId,
    Expression<int>? petCount,
    Expression<bool>? adequateConditions,
    Expression<bool>? vaccinated,
    Expression<bool>? livesInside,
    Expression<int>? familySheetFormDataId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (petTypeId != null) 'pet_type_id': petTypeId,
      if (petCount != null) 'pet_count': petCount,
      if (adequateConditions != null) 'adequate_conditions': adequateConditions,
      if (vaccinated != null) 'vaccinated': vaccinated,
      if (livesInside != null) 'lives_inside': livesInside,
      if (familySheetFormDataId != null)
        'family_sheet_form_data_id': familySheetFormDataId,
    });
  }

  PetDetailsCompanion copyWith(
      {Value<int>? id,
      Value<int>? petTypeId,
      Value<int>? petCount,
      Value<bool>? adequateConditions,
      Value<bool>? vaccinated,
      Value<bool>? livesInside,
      Value<int>? familySheetFormDataId}) {
    return PetDetailsCompanion(
      id: id ?? this.id,
      petTypeId: petTypeId ?? this.petTypeId,
      petCount: petCount ?? this.petCount,
      adequateConditions: adequateConditions ?? this.adequateConditions,
      vaccinated: vaccinated ?? this.vaccinated,
      livesInside: livesInside ?? this.livesInside,
      familySheetFormDataId:
          familySheetFormDataId ?? this.familySheetFormDataId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (petTypeId.present) {
      map['pet_type_id'] = Variable<int>(petTypeId.value);
    }
    if (petCount.present) {
      map['pet_count'] = Variable<int>(petCount.value);
    }
    if (adequateConditions.present) {
      map['adequate_conditions'] = Variable<bool>(adequateConditions.value);
    }
    if (vaccinated.present) {
      map['vaccinated'] = Variable<bool>(vaccinated.value);
    }
    if (livesInside.present) {
      map['lives_inside'] = Variable<bool>(livesInside.value);
    }
    if (familySheetFormDataId.present) {
      map['family_sheet_form_data_id'] =
          Variable<int>(familySheetFormDataId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PetDetailsCompanion(')
          ..write('id: $id, ')
          ..write('petTypeId: $petTypeId, ')
          ..write('petCount: $petCount, ')
          ..write('adequateConditions: $adequateConditions, ')
          ..write('vaccinated: $vaccinated, ')
          ..write('livesInside: $livesInside, ')
          ..write('familySheetFormDataId: $familySheetFormDataId')
          ..write(')'))
        .toString();
  }
}

class $FamilyTable extends Family with TableInfo<$FamilyTable, FamilyData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family';
  @override
  VerificationContext validateIntegrity(Insertable<FamilyData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilyData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $FamilyTable createAlias(String alias) {
    return $FamilyTable(attachedDatabase, alias);
  }
}

class FamilyData extends DataClass implements Insertable<FamilyData> {
  final int id;
  final String name;
  const FamilyData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  FamilyCompanion toCompanion(bool nullToAbsent) {
    return FamilyCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory FamilyData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilyData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  FamilyData copyWith({int? id, String? name}) => FamilyData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('FamilyData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilyData && other.id == this.id && other.name == this.name);
}

class FamilyCompanion extends UpdateCompanion<FamilyData> {
  final Value<int> id;
  final Value<String> name;
  const FamilyCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  FamilyCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<FamilyData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  FamilyCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return FamilyCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $FamilyMemberTable extends FamilyMember
    with TableInfo<$FamilyMemberTable, FamilyMemberData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyMemberTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _cuiMeta = const VerificationMeta('cui');
  @override
  late final GeneratedColumn<int> cui = GeneratedColumn<int>(
      'cui', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _relationshipMeta =
      const VerificationMeta('relationship');
  @override
  late final GeneratedColumn<int> relationship = GeneratedColumn<int>(
      'relationship', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _familyIdMeta =
      const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<int> familyId = GeneratedColumn<int>(
      'family_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, cui, firstName, lastName, relationship, familyId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'family_member';
  @override
  VerificationContext validateIntegrity(Insertable<FamilyMemberData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cui')) {
      context.handle(
          _cuiMeta, cui.isAcceptableOrUnknown(data['cui']!, _cuiMeta));
    } else if (isInserting) {
      context.missing(_cuiMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('relationship')) {
      context.handle(
          _relationshipMeta,
          relationship.isAcceptableOrUnknown(
              data['relationship']!, _relationshipMeta));
    } else if (isInserting) {
      context.missing(_relationshipMeta);
    }
    if (data.containsKey('family_id')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['family_id']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilyMemberData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyMemberData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      cui: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cui'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      relationship: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}relationship'])!,
      familyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}family_id'])!,
    );
  }

  @override
  $FamilyMemberTable createAlias(String alias) {
    return $FamilyMemberTable(attachedDatabase, alias);
  }
}

class FamilyMemberData extends DataClass
    implements Insertable<FamilyMemberData> {
  final int id;
  final int cui;
  final String firstName;
  final String lastName;
  final int relationship;
  final int familyId;
  const FamilyMemberData(
      {required this.id,
      required this.cui,
      required this.firstName,
      required this.lastName,
      required this.relationship,
      required this.familyId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cui'] = Variable<int>(cui);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['relationship'] = Variable<int>(relationship);
    map['family_id'] = Variable<int>(familyId);
    return map;
  }

  FamilyMemberCompanion toCompanion(bool nullToAbsent) {
    return FamilyMemberCompanion(
      id: Value(id),
      cui: Value(cui),
      firstName: Value(firstName),
      lastName: Value(lastName),
      relationship: Value(relationship),
      familyId: Value(familyId),
    );
  }

  factory FamilyMemberData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FamilyMemberData(
      id: serializer.fromJson<int>(json['id']),
      cui: serializer.fromJson<int>(json['cui']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      relationship: serializer.fromJson<int>(json['relationship']),
      familyId: serializer.fromJson<int>(json['familyId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cui': serializer.toJson<int>(cui),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'relationship': serializer.toJson<int>(relationship),
      'familyId': serializer.toJson<int>(familyId),
    };
  }

  FamilyMemberData copyWith(
          {int? id,
          int? cui,
          String? firstName,
          String? lastName,
          int? relationship,
          int? familyId}) =>
      FamilyMemberData(
        id: id ?? this.id,
        cui: cui ?? this.cui,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        relationship: relationship ?? this.relationship,
        familyId: familyId ?? this.familyId,
      );
  @override
  String toString() {
    return (StringBuffer('FamilyMemberData(')
          ..write('id: $id, ')
          ..write('cui: $cui, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('relationship: $relationship, ')
          ..write('familyId: $familyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, cui, firstName, lastName, relationship, familyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FamilyMemberData &&
          other.id == this.id &&
          other.cui == this.cui &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.relationship == this.relationship &&
          other.familyId == this.familyId);
}

class FamilyMemberCompanion extends UpdateCompanion<FamilyMemberData> {
  final Value<int> id;
  final Value<int> cui;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<int> relationship;
  final Value<int> familyId;
  const FamilyMemberCompanion({
    this.id = const Value.absent(),
    this.cui = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.relationship = const Value.absent(),
    this.familyId = const Value.absent(),
  });
  FamilyMemberCompanion.insert({
    this.id = const Value.absent(),
    required int cui,
    required String firstName,
    required String lastName,
    required int relationship,
    required int familyId,
  })  : cui = Value(cui),
        firstName = Value(firstName),
        lastName = Value(lastName),
        relationship = Value(relationship),
        familyId = Value(familyId);
  static Insertable<FamilyMemberData> custom({
    Expression<int>? id,
    Expression<int>? cui,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<int>? relationship,
    Expression<int>? familyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cui != null) 'cui': cui,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (relationship != null) 'relationship': relationship,
      if (familyId != null) 'family_id': familyId,
    });
  }

  FamilyMemberCompanion copyWith(
      {Value<int>? id,
      Value<int>? cui,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<int>? relationship,
      Value<int>? familyId}) {
    return FamilyMemberCompanion(
      id: id ?? this.id,
      cui: cui ?? this.cui,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      relationship: relationship ?? this.relationship,
      familyId: familyId ?? this.familyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cui.present) {
      map['cui'] = Variable<int>(cui.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (relationship.present) {
      map['relationship'] = Variable<int>(relationship.value);
    }
    if (familyId.present) {
      map['family_id'] = Variable<int>(familyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyMemberCompanion(')
          ..write('id: $id, ')
          ..write('cui: $cui, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('relationship: $relationship, ')
          ..write('familyId: $familyId')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $FamilySheetDataFormTable familySheetDataForm =
      $FamilySheetDataFormTable(this);
  late final $FamilySheetDataForm2Table familySheetDataForm2 =
      $FamilySheetDataForm2Table(this);
  late final $FamilySheetDataForm3Table familySheetDataForm3 =
      $FamilySheetDataForm3Table(this);
  late final $PetDetailsTable petDetails = $PetDetailsTable(this);
  late final $FamilyTable family = $FamilyTable(this);
  late final $FamilyMemberTable familyMember = $FamilyMemberTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        familySheetDataForm,
        familySheetDataForm2,
        familySheetDataForm3,
        petDetails,
        family,
        familyMember
      ];
}
