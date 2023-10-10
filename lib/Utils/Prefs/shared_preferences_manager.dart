
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager{
  late Future<SharedPreferences> preferences;

  setStringvalue(String key,String value) async {
    preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    await prefs.setString(key, value);
  }

  getStringValue(String value) async {
    preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    final String stringValue = (prefs.getString(value) ?? "");
    return stringValue;
  }

  setBooleanvalue(String key,bool value) async {
    preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    await prefs.setBool(key, value);
  }

  getBooleanValue(String key) async {
    preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    final bool stringValue = (prefs.getBool(key)!!);
    return stringValue;
  }

}