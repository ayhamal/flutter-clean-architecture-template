import 'package:shared_preferences/shared_preferences.dart';

import '../local/shared_preference_api.dart';
import '../../../domain/repositories/shared_preferences_repository.dart';

class SharedPreferencesRepositoryImplementation implements SharedPreferencesRepository {
  final SharedPreferenceAPI _sharedPreferenceAPI;

  SharedPreferencesRepositoryImplementation(this._sharedPreferenceAPI);

  @override
  Future<bool> contains(String key) {
    return _sharedPreferenceAPI.contains(key);
  }

  @override
  Future<Object?> get(String key) {
    return _sharedPreferenceAPI.get(key);
  }

  @override
  Future<bool?> getBool(String key) {
    return _sharedPreferenceAPI.getBool(key);
  }

  @override
  Future<double?> getDouble(String key) {
    return _sharedPreferenceAPI.getDouble(key);
  }

  @override
  Future<SharedPreferences> getInstance() {
    return _sharedPreferenceAPI.getInstance();
  }

  @override
  Future<int?> getInt(String key) {
    return _sharedPreferenceAPI.getInt(key);
  }

  @override
  Future<Set<String>> getKeys() {
    return _sharedPreferenceAPI.getKeys();
  }

  @override
  Future<String?> getString(String key) {
    return _sharedPreferenceAPI.getString(key);
  }

  @override
  Future<List?> getStringList(String key) {
    return _sharedPreferenceAPI.getStringList(key);
  }

  @override
  Future<String?> read(String key) {
    return _sharedPreferenceAPI.read(key);
  }

  @override
  Future<bool> remove(String key) {
    return _sharedPreferenceAPI.remove(key);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _sharedPreferenceAPI.setBool(key, value);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    return _sharedPreferenceAPI.setDouble(key, value);
  }

  @override
  Future<bool> setInt(String key, int value) {
    return _sharedPreferenceAPI.setInt(key, value);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _sharedPreferenceAPI.setString(key, value);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    return _sharedPreferenceAPI.setStringList(key, value);
  }
}
