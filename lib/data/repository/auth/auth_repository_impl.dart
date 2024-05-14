import 'package:flutter_boiler/domain/datasource/auth/auth_datasource.dart';
import 'package:flutter_boiler/domain/repository/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource authDatasource;

  AuthRepositoryImpl({required this.authDatasource});

  @override
  Future<dynamic> login({required String email, required String passwod}) {
    try {
      return authDatasource.login(email: email, passwod: passwod);
    } catch (e) {
      rethrow;
    }
  }
}
