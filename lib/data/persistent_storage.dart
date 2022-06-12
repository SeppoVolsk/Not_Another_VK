import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PersistentStorage {
  static final PersistentStorage _instance = PersistentStorage._();
  static SharedPreferences? _prefs;

  PersistentStorage._();
  factory PersistentStorage() => _instance;

  bool get isReady => _prefs == null ? false : true;

  Set<String>? get keys => _prefs?.getKeys();
  Future<void> init() async => _prefs = await SharedPreferences.getInstance();
  Future<void> delete({required String key}) async => await _prefs?.remove(key);
  Future<void> write<T>({required String key, required T value}) async {
    switch (T) {
      case String:
        await _prefs?.setString(key, value as String);
        break;
      case Map<String, dynamic>:
        String jsonString = jsonEncode(value);
        await _prefs?.setString(key, jsonString);
        break;
      default:
    }
  }

  String? read({required String key}) => _prefs?.getString(key);
}
