import 'package:shared_preferences/shared_preferences.dart';

/// A simple wrapper around [SharedPreferences] to persist key-value pairs.
class LocalStorageService {
  /// Saves a string value under the given [key].
  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  /// Retrieves the string value associated with the given [key].
  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}
