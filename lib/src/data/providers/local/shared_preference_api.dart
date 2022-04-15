import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceAPI {
  /// Get shared preferences instance
  Future<SharedPreferences> getInstance() async {
    return await SharedPreferences.getInstance();
  }

  /// Get all keys stored on shared preferences
  Future<Set<String>> getKeys() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getKeys();
  }

  /// Get object from shared preferences
  Future<Object?> get(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.get(key) == null) return null;
    return prefs.get(key);
  }

  /// Get bool from shared preferences
  Future<bool?> getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(key) == null) return null;
    return prefs.getBool(key);
  }

  /// Get string from shared preferences
  Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString(key) == null) return null;
    return prefs.getString(key);
  }

  /// Get string list from shared preferences
  Future<List?> getStringList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList(key) == null) return null;
    return prefs.getStringList(key);
  }

  /// Get int from shared preferences
  Future<int?> getInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getInt(key) == null) return null;
    return prefs.getInt(key);
  }

  /// Get int from shared preferences
  Future<double?> getDouble(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getDouble(key) == null) return null;
    return prefs.getDouble(key);
  }

  /// Set bool on shared preferences
  Future<bool> setBool(String key, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setBool(key, value);
  }

  /// Set int on shared preferences
  Future<bool> setInt(String key, int value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt(key, value);
  }

  /// Set double on shared preferences
  Future<bool> setDouble(String key, double value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(key, value);
  }

  /// Set string on shared preferences
  Future<bool> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  /// Set string list on shared preferences
  Future<bool> setStringList(String key, List<String> value) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setStringList(key, value);
  }

  /// Read Generic Record as string from shared preferences
  Future<String?> read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString(key) == null) return null;
    return prefs.getString(key)!;
  }

  /// Check if shared preferences has member key
  Future<bool> contains(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  /// Remove field from shared preferences
  Future<bool> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.remove(key);
  }
}
