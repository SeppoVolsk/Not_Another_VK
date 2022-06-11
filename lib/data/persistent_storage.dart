import 'package:shared_preferences/shared_preferences.dart';

class PersistentStorage {
  static PersistentStorage _instance = PersistentStorage._();
  static SharedPreferences? _prefs;

  PersistentStorage._();
  factory PersistentStorage() => _instance;

  get prefs => prefs.toString();
  bool get isReady => _prefs == null ? false : true;

  Set<String>? get keys => _prefs?.getKeys();

  Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  Future<void> write({required String key, required String value}) async =>
      await _prefs?.setString(key, value);

  String? read({required String key}) => _prefs?.getString(key);
}
