import 'dart:io';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vk_postman/data/persistent_storage.dart';

class PostsDataProvider {
  final storage = PersistentStorage();

  Future<File> urlToFile(String imageUrl) async {
    Directory downloadDir = await getApplicationDocumentsDirectory();
    print(downloadDir);
    File file = File('${downloadDir.path}' +
        '/' +
        '${imageUrl.substring(37, 45)}_${DateTime.now().toString()}.jpg');

    print(file.path);
    final url = Uri.parse(imageUrl);
    final request = await get(url);
    await file.writeAsBytes(request.bodyBytes);
    return file;
  }

  Future<Iterable<File>?> getFilesInDirectory() async {
    final Directory downloadDir = await getApplicationDocumentsDirectory();
    final List<FileSystemEntity> dirEntities =
        await downloadDir.list().toList();
    final files = dirEntities.whereType<File>();
    print('GET FILES IN DIR FUNC: ');
    print('all files paths:');
    print(files);

    final jpgFiles = files.where((file) {
      return file.path.substring(file.path.length - 3) == 'jpg';
    });

    return jpgFiles.isNotEmpty ? jpgFiles : null;
  }

  Future<void> clearDirectory() async {
    final Directory downloadDir = await getApplicationDocumentsDirectory();
    downloadDir.delete(recursive: true);
    print('DIRECTORY WAS DELETED');
  }
}
