import 'package:shared_preferences/shared_preferences.dart';

class PersistentStorage {
  static final _instance = PersistentStorage._();
  static SharedPreferences? _prefs;

  PersistentStorage._() {
    print('_() создался');
  }

  factory PersistentStorage() {
    print('factory конструктор');
    return _instance;
  }

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    print('Initialization done');
  }

  Future<void> write({required String key, required String value}) async {
    await _prefs?.setString(key, value);
    print('Write отработал');
  }

  String? read({required String key}) {
    final result = _prefs?.getString(key);
    print('Read есть результат');
    return result;
  }
}
