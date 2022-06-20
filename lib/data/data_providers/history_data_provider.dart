import 'package:vk_postman/data/persistent_storage.dart';

class HistoryDataProvider {
  final int maxLength = 5;
  final historyWords = <String>[];
  final storage = PersistentStorage();

  void firstInit({required Set<String> words}) =>
      historyWords.addAll(words.take(maxLength).toList());

  void makeMarks(
      {required String newsQuery, required Map<String, dynamic> json}) async {
    if (historyWords.length < maxLength) {
      historyWords.add(newsQuery);
      await storage.write(key: newsQuery, value: json);
    } else {
      historyWords
        ..removeAt(0)
        ..add(newsQuery);
      await storage.delete(key: historyWords[0]);
      await storage.write(key: newsQuery, value: json);
    }
  }
}
