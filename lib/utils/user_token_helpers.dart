import 'package:flutter_boiler/config/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Class to handle login token in app preferences
class UserTokenSharedPreferences {
  static late SharedPreferences prefs;

  /// Method to init Shared Prefences package instance
  /// An object is created to access the app's preferences
  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  /* =============================================================== */
  /* ============================= SET ============================= */

  /// Method to save auth token
  static Future<bool> saveValueAuthToken(String authToken) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesAuthToken, authToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save refresh token
  static Future<bool> saveValueRefreshToken(String refreshToken) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesRefreshToken, refreshToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save auth token expiration date and time
  static Future<bool> saveValueAuthTokenExpiration(
      String authTokenExpiration) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesAuthTokenExpiration, authTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save refresh token expiration date and time
  static Future<bool> saveValueRefreshTokenExpiration(
      String refreshTokenExpiration) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesRefreshTokenExpiration,
          refreshTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save the date and time of the request for new tokens
  static Future<bool> saveValueTokenRequestDateTime(
      String tokenRequestDateTime) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesTokenRequestDateTime, tokenRequestDateTime);
    } catch (e) {
      rethrow;
    }
  }

  /// Mehotd tto save cui number
  /// This method is used to save the CUI number of the user
  static Future<bool> saveValueCuiNumber(int cuiNumber) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(
          AppConstants.preferencesCuiNumber, cuiNumber.toString());
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save full name
  /// This method is used to save the full name of the user
  static Future<bool> saveValueFullName(String fullName) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setString(AppConstants.preferencesFullName, fullName);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to save id user
  static Future<bool> saveValueUserId(int userId) async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.setInt(AppConstants.preferencesUserId, userId);
    } catch (e) {
      rethrow;
    }
  }

  static Future<bool> saveValueIdFormFamilySheet(int familySheetId) async {
    try {
      prefs = await SharedPreferences.getInstance();
      return await prefs.setInt(
          AppConstants.preferencesFormFamilySheetId, familySheetId);
    } catch (e) {
      rethrow;
    }
  }

  /* =============================================================== */
  /* ============================= GET ============================= */

  /// Method to return saved auth token
  static Future<String?> getSavedAuthToken() async {
    try {
      prefs = await SharedPreferences.getInstance();
      //return "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzdWFyaW8iOjEwMDQ4NCwidXNlcm5hbWUiOiJBUFAiLCJlbWFpbCI6bnVsbCwiY3VpIjoxNjU0MzQzNzYxNjA2LCJub21icmVzIjoiTHVpcyIsImFwZWxsaWRvcyI6IlhvbCIsImlkUHVlc3RvIjpudWxsLCJpZEluc3RpdHVjaW9uIjpudWxsLCJpZGFzIjpudWxsLCJpZGRzIjpudWxsLCJpZHRzIjpudWxsLCJpZFVuaWRhZEVqZWN1dG9yYSI6bnVsbCwiZXhwaXJhdGlvbiI6MTIwLCJmaXJzdExvZ2luIjpmYWxzZSwiaW5zdGl0dXRpb24iOiJFWFBFRElFTlRFIENMSU5JQ08iLCJyb2xlcyI6W3sicm9sIjoiRElHSVRBRE9SIC0gQVBQIE1PVklMIEVYUEVESUVOVEUgVkFDVU5BQ0lPTiBNT1ZJTCIsImlkUm9sIjo1Nywia2V5IjoiRElHX0VDX01PVklMIn1dLCJpYXQiOjE3MTUyNzE0Njh9.Q1YbPC-vEGveJR0wJY0EH-e84mTA7OPv5awU66llYyI";
      return prefs.getString(AppConstants.preferencesAuthToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get auth token expiration date and time
  static Future<String?> getSavedAuthTokenExpiration() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return prefs.getString(AppConstants.preferencesAuthTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to return saved refresh token
  static Future<String?> getSavedRefreshToken() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return prefs.getString(AppConstants.preferencesRefreshToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get refresh token expiration date and time
  static Future<String?> getSavedRefreshTokenExpiration() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return prefs.getString(AppConstants.preferencesRefreshTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get token request date
  static Future<String?> getSavedTokenRequestDateTime() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return prefs.getString(AppConstants.preferencesTokenRequestDateTime);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get cui number
  /// This method is used to get the CUI number of the user
  static Future<String?> getSavedCuiNumber() async {
    try {
      prefs = await SharedPreferences.getInstance();
      //return "3003416440101";
      return prefs.getString(AppConstants.preferencesCuiNumber);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get full name
  /// This method is used to get the full name of the user
  static Future<String?> getSavedFullName() async {
    try {
      prefs = await SharedPreferences.getInstance();
      //return "CARLOS IVAN";
      return prefs.getString(AppConstants.preferencesFullName);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get user id
  /// This method is used to get the full name of the user
  static Future<int?> getSavedUserId() async {
    try {
      prefs = await SharedPreferences.getInstance();
      //return 12345;
      return prefs.getInt(AppConstants.preferencesUserId);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to get id form1
  /// This method is used to get the full name of the user
  static Future<int?> getSavedIdFormFamilySheet() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return prefs.getInt(AppConstants.preferencesFormFamilySheetId);
    } catch (e) {
      rethrow;
    }
  }

  /* ================================================================== */
  /* ============================= DELETE ============================= */

  /// Method to remove saved auth token
  static Future<bool> deleteSavedAuthToken() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.remove(AppConstants.preferencesAuthToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to remove saved auth token expiration
  static Future<bool> deleteSavedAuthTokenExpiration() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.remove(AppConstants.preferencesAuthTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to remove saved refresh token
  static Future<bool> deleteSavedRefreshToken() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.remove(AppConstants.preferencesRefreshToken);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to remove saved refresh token expiration
  static Future<bool> deleteSavedRefreshTokenExpiration() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.remove(AppConstants.preferencesRefreshTokenExpiration);
    } catch (e) {
      rethrow;
    }
  }

  /// Method to remove saved auth token request date
  static Future<bool> deleteSavedAuthTokenRequestDateTime() async {
    try {
      prefs = await SharedPreferences.getInstance();

      return await prefs.remove(AppConstants.preferencesTokenRequestDateTime);
    } catch (e) {
      rethrow;
    }
  }
}
