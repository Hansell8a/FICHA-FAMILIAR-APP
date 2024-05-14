abstract class AuthRepository {
  Future<dynamic> login({required String email, required String passwod});
}
