import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_storage/get_storage.dart';

class StorageHelper {
  final _box = GetStorage();

  Future<void> _set<T>(String key, T value) async {
    await _box.write(key, value);
  }

  // Future<void> _remove(String key) async {
  //   await _box.remove(key);
  // }

  bool _getBool(String key) {
    return _box.read(key) ?? false;
  }

  String _getString(String key) {
    return _box.read(key) ?? '';
  }

  // ----------------------------------------------------------------------- //
  // Get, set isDarkMode
  // ----------------------------------------------------------------------- //
  Future<void> setIsDarkMode(bool isDarkMode) {
    return _set<bool>(StorageKeys.isDarkMode, isDarkMode);
  }

  bool getIsDarkMode() {
    return _getBool(StorageKeys.isDarkMode);
  }
  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set app language
  // ----------------------------------------------------------------------- //
  Future<void> setLanguage(String language) {
    return _set<String>(StorageKeys.languageCode, language);
  }

  String getLanguage() {
    return _getString(StorageKeys.languageCode);
  }
  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set app notification phone
  // ----------------------------------------------------------------------- //
  Future<void> setPhoneTransferNotification(bool phoneTransfer) {
    return _set<bool>(StorageKeys.phoneTransferNoti, phoneTransfer);
  }

  bool getPhoneTransferNotification() {
    return _getBool(StorageKeys.phoneTransferNoti);
  }

  Future<void> setPhoneSecurityNotification(bool phoneSecurity) {
    return _set<bool>(StorageKeys.phoneSecurityNoti, phoneSecurity);
  }

  bool getPhoneSecurityNotification() {
    return _getBool(StorageKeys.phoneSecurityNoti);
  }

  Future<void> setPhoneHelpFulNotification(bool phoneHelpFul) {
    return _set<bool>(StorageKeys.phoneHelpFullNoti, phoneHelpFul);
  }

  bool getPhoneHelpFulNotification() {
    return _getBool(StorageKeys.phoneHelpFullNoti);
  }

  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set app notification email
  // ----------------------------------------------------------------------- //
  Future<void> setEmailTransferNotification(bool emailTransfer) {
    return _set<bool>(StorageKeys.emailTransferNoti, emailTransfer);
  }

  bool getEmailTransferNotification() {
    return _getBool(StorageKeys.emailTransferNoti);
  }

  Future<void> setEmailSecurityNotification(bool emailSecurity) {
    return _set<bool>(StorageKeys.emailSecurityNoti, emailSecurity);
  }

  bool getEmailSecurityNotification() {
    return _getBool(StorageKeys.emailSecurityNoti);
  }

  Future<void> setEmailHelpFulNotification(bool emailHelpFul) {
    return _set<bool>(StorageKeys.emailHelpFullNoti, emailHelpFul);
  }

  bool getEmailHelpFulNotification() {
    return _getBool(StorageKeys.emailHelpFullNoti);
  }
  // ----------------------------------------------------------------------- //
}

class SecureStorageHelper {
  final _box = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(accessibility: KeychainAccessibility.unlocked));

  FlutterSecureStorage get boxSecure => _box;

  Future<void> _set(String key, String value) async {
    await _box.write(key: key, value: value);
  }

  Future<void> _remove(String key) async {
    await _box.delete(key: key);
  }

  Future<String> _getString(String key) async {
    String? result = '';

    try {
      result = await _box.read(key: key);
    } catch (e) {
      _box.deleteAll();
    }

    return result ?? '';
  }

  // ----------------------------------------------------------------------- //
  // Get, set, remove access token
  // ----------------------------------------------------------------------- //
  Future<void> setAccessToken(String accessToken) async {
    _set(StorageKeys.accessToken, accessToken);
  }

  Future<String> getAccessToken() {
    return _getString(StorageKeys.accessToken);
  }

  Future<void> removeAccessToken() {
    return _remove(StorageKeys.accessToken);
  }

  // ----------------------------------------------------------------------- //
  // Get, set, remove refresh token
  // ----------------------------------------------------------------------- //
  Future<void> setRefreshToken(String refresh) async {
    _set(StorageKeys.refreshToken, refresh);
  }

  Future<String> getRefreshToken() {
    return _getString(StorageKeys.refreshToken);
  }

  Future<void> removeRefreshToken() {
    return _remove(StorageKeys.refreshToken);
  }
  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set, remove userId
  // ----------------------------------------------------------------------- //
  Future<void> setUserId(String userId) async {
    _set(StorageKeys.userId, userId);
  }

  Future<String> getUserId() {
    return _getString(StorageKeys.userId);
  }

  Future<void> removeUserId() {
    return _remove(StorageKeys.userId);
  }
  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set, remove userId
  // ----------------------------------------------------------------------- //
  Future<void> setPasscode(String passcode) async {
    _set(StorageKeys.passcode, passcode);
  }

  Future<String> getPasscode() {
    return _getString(StorageKeys.passcode);
  }

  Future<void> removePasscode() {
    return _remove(StorageKeys.passcode);
  }
  // ----------------------------------------------------------------------- //

  // ----------------------------------------------------------------------- //
  // Get, set biometric enabled time
  // ----------------------------------------------------------------------- //
  Future<void> setBiometricEnabledTime(DateTime dateTime) {
    return _set(StorageKeys.biometricEnabledTime, dateTime.toString());
  }

  Future<String> getBiometricEnabledTime() {
    return _getString(StorageKeys.biometricEnabledTime);
  }

  Future<void> removeBiometricEnabledTime() {
    return _remove(StorageKeys.biometricEnabledTime);
  }
  // ----------------------------------------------------------------------- //
}

class StorageKeys {
  static String accessToken = 'access_token';
  static String refreshToken = 'refreshToken';
  static String userId = 'user_id';
  static String isDarkMode = 'is_dark_mode';
  static String languageCode = 'language_code';
  static String verification = 'verification';
  static String passcode = 'passcode';
  static String biometricEnabledTime = 'biometric_enabled_time';
  static String hasRunBefore = 'hasRunBefore';

  static String phoneTransferNoti = 'phoneTransferNoti';
  static String emailTransferNoti = 'emailTransferNoti';
  static String phoneSecurityNoti = 'phoneSecurityNoti';
  static String emailSecurityNoti = 'emailSecurityNoti';
  static String phoneHelpFullNoti = 'phoneHelpFullNoti';
  static String emailHelpFullNoti = 'emailHelpFullNoti';

  static String timeInActivityApp = 'timeInActivityApp';
}
