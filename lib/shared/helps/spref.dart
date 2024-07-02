import 'package:myapp/config/sprefs_core.dart';
import 'package:myapp/commands/core/app_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPref extends SPrefCore {
  static SharedPreferences? _prefs;

  static final SPref instance = SPref._internal();

  SPref._internal() : super(p: _prefs!);

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future set(String key, String? value) async {
    late SharedPreferences prefs;
    prefs = _prefs ?? await SharedPreferences.getInstance();
    await prefs.setString(key, value ?? '');
  }

  Future setList(String key, List<String>? value) async {
    late SharedPreferences prefs;
    prefs = _prefs ?? await SharedPreferences.getInstance();
    await prefs.setStringList(key, value ?? []);
  }

  get(String key) {
    return _prefs?.get(key) ?? '';
  }

  Future getList(String key) async {
    return _prefs?.getStringList(key) ?? [];
  }

  clear() {
    _prefs?.setString(AppKey.xToken, '');
    _prefs?.setString(AppKey.idToken, '');
    _prefs?.setString(AppKey.deviceToken, '');
    _prefs?.setString(AppKey.phoneNumber, '');
    _prefs?.setString(AppKey.checkManage, '');
  }

  Future remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
