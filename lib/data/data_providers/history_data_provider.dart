// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:vk_postman/data/data_providers/posts_data_provider.dart';

class HistoryDataProvider {
  final int maxLength = 5;
  final historyWords = <String>[];
  final postDataProvider = const PostsDataProvider();

  // final HistoryDataProvider _history = HistoryDataProvider._();

  // factory HistoryDataProvider() {
  //   return _history;
  // }

  HistoryDataProvider();

  void markInHistory(
      {required String newsQuery, required Map<String, dynamic> json}) async {
    if (historyWords.length < maxLength) {
      historyWords.add(newsQuery);
      await postDataProvider.savePostsToStorageVerTwo(
          key: newsQuery, json: json);
    } else {
      historyWords.removeAt(0);
      historyWords.add(newsQuery);
      await postDataProvider.removeHistoryElementAtStorage(historyWords[0]);
      await postDataProvider.savePostsToStorageVerTwo(
          key: newsQuery, json: json);
    }
  }
}
