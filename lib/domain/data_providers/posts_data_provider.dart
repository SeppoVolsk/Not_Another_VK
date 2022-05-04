import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PostsDataProvider {
  const PostsDataProvider();

  Future<Set<String>> getStorageKeys() async {
    final storage = await SharedPreferences.getInstance();
    final storageKeys = storage.getKeys();
    return storageKeys;
  }

  Future<String?> getStringFromStorage({required String key}) async {
    final storage = await SharedPreferences.getInstance();
    return storage.getString(key);
  }

  Future<void> savePostsToStorageVerTwo(
      {required String key, required dynamic json}) async {
    final storage = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(json);
    await storage.setString(key, jsonString);
  }

  Future<void> removeHistoryElementAtStorage(String element) async {
    final storage = await SharedPreferences.getInstance();
    await storage.remove(element);
  }
}
