import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PostsDataProvider {
  final _storage = SharedPreferences.getInstance();

  Future<Set<String>> getStorageKeys() async {
    final storage = await _storage;
    final storageKeys = storage.getKeys();
    return storageKeys;
  }

  Future<String?> getStringFromStorage({required String key}) async {
    final storage = await _storage;
    return storage.getString(key);
  }

  Future<void> savePostsToStorageVerTwo(
      {required String key, required dynamic json}) async {
    final storage = await _storage;
    String jsonString = jsonEncode(json);
    await storage.setString(key, jsonString);
  }

  Future<void> removeHistoryElementAtStorage(String element) async {
    final storage = await _storage;
    await storage.remove(element);
  }
}
