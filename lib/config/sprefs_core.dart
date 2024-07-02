import 'package:shared_preferences/shared_preferences.dart';

class SPrefCore {
  
  SPrefCore({required SharedPreferences p}) {
    prefs = p;
  }
  static late SharedPreferences prefs;

  static void setSPref({required SharedPreferences p}) {
    prefs = p;
  }
}
