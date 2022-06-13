import 'dart:io';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

class FileManager {
  static final FileManager _instance = FileManager._();
  static Directory? _dir;

  FileManager._();
  factory FileManager() => _instance;

  bool get isReady => _dir == null ? false : true;

  Future<void> init() async => _dir = await getApplicationDocumentsDirectory();

  Future<File> urlToFile(String imageUrl) async {
    File file = File('${_dir?.path}' +
        '/' +
        '${imageUrl.substring(37, 45)}_${DateTime.now().toString()}.jpg');
    print(file.path);
    final url = Uri.parse(imageUrl);
    final request = await get(url);
    await file.writeAsBytes(request.bodyBytes);
    return file;
  }

  Future<Iterable<File>?> getFilesInDirectory() async {
    final List<FileSystemEntity>? dirEntities = await _dir?.list().toList();
    final files = dirEntities?.whereType<File>();
    print('''GET FILES IN DIR FUNC: 
             all files paths: 
             $files''');
    final jpgFiles = files?.where((file) {
      return file.path.substring(file.path.length - 3) == 'jpg';
    });
    return (jpgFiles != null)
        ? jpgFiles.isNotEmpty
            ? jpgFiles
            : null
        : null;
  }

  Future<void> clearDirectory() async {
    await _dir?.delete(recursive: true);
    print('DIRECTORY WAS DELETED');
  }
}
