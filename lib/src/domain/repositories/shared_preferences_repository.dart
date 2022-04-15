import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesRepository {
  Future<Object?> get(String key);
  Future<bool?> getBool(String key);
  Future<String?> getString(String key);
  Future<List?> getStringList(String key);
  Future<int?> getInt(String key);
  Future<double?> getDouble(String key);
  Future<Set<String>> getKeys();
  Future<SharedPreferences> getInstance();
  Future<bool> setBool(String key, bool value);
  Future<bool> setInt(String key, int value);
  Future<bool> setDouble(String key, double value);
  Future<bool> setString(String key, String value);
  Future<bool> setStringList(String key, List<String> value);
  Future<String?> read(String key);
  Future<bool> contains(String key);
  Future<bool> remove(String key);
}
