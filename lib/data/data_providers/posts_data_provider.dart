import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

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

  Future<File> urlToFile(String imageUrl) async {
    Directory downloadDir = await getApplicationDocumentsDirectory();
    print(downloadDir);
    File file =
        File('${downloadDir.path}' + '/' + '${imageUrl.substring(37, 45)}.jpg');
    print(file.path);
    final url = Uri.parse(imageUrl);
    final request = await get(url);
    await file.writeAsBytes(request.bodyBytes);
    return file;
  }

  Future<Iterable<File>> getFilesInDirectory() async {
    final Directory downloadDir = await getApplicationDocumentsDirectory();
    final List<FileSystemEntity> dirEntities =
        await downloadDir.list().toList();
    final files = dirEntities.whereType<File>();
    print('GET FILES IN DIR FUNC: ');
    print(files);
    return files.skipWhile(
        (file) => file.path.substring(file.path.length - 3) != 'jpg');
  }

  Future<void> clearDirectory() async {
    final Directory downloadDir = await getApplicationDocumentsDirectory();
    downloadDir.delete(recursive: true);
    print('DIRECTORY WAS DELETED');
  }
}
