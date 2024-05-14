import 'package:drift/drift.dart';

class Family extends Table {

  @override
  String get tableName => 'family';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}