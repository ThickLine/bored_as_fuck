import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static SharedPreferencesService? _instance;

  static Future<SharedPreferencesService> getInstance(
      {bool enableLogs = false}) async {
    return _instance ??
        SharedPreferencesService._(
          await SharedPreferences.getInstance(),
          enableLogs,
        );
  }

  final bool enableLogs;

  final SharedPreferences _pref;

  SharedPreferencesService._(
    this._pref,
    this.enableLogs,
  );

  Future<dynamic> getData({String? key}) async {
    return _pref.getBool(key!);
  }

  Future<dynamic> getDataInt({String? key}) async {
    return _pref.getInt(key!);
  }

  Future<void> saveData({String? key, bool? value}) {
    return _pref.setBool(key!, value!);
  }

  Future<void> saveDataInt({String? key, int? value}) {
    return _pref.setInt(key!, value!);
  }

  Future<bool> deleteData({String? key}) {
    return _pref.remove(key!);
  }

  Future<bool> clearData() {
    return _pref.clear();
  }
}
