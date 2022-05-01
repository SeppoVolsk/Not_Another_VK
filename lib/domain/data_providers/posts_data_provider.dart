import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PostsDataProvider {
  final _storage = SharedPreferences.getInstance();

  Future<void> savePostsToStorageVerTwo(
      {required String key, required dynamic json}) async {
    final storage = await _storage;
    String jsonString = jsonEncode(json);
    await storage.setString(key, jsonString);
  }
}
