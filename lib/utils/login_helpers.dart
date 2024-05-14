import 'package:flutter_boiler/utils/user_token_helpers.dart';

class LoginHelper {
  /// Method to cache everything related to the login
  static Future<bool> saveAuthenticationData(String token) async {
    try {
      bool isAuthTokenSaved =
          await UserTokenSharedPreferences.saveValueAuthToken(token);

      if (!isAuthTokenSaved) {
        return false;
      }

      return true;
    } catch (e) {
      rethrow;
    }
  }
}
