import 'dart:convert';
import 'dart:ffi';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';
import 'package:vk_postman/presentation/widgets/error_snack_bar.dart';

class IMainScreenRepository {
  final _history = HistoryDataProvider();
  final _storage = PersistentStorage();

  List<Post>? _posts;
  Map<String, dynamic>? _json;
  String? _newsQuery;

  void _fetchJson() {}
  void _convertJsonToPosts() {}

  MainScreenEntity read({required String? query}) =>
      _templateMethod(query: query);

  MainScreenEntity _templateMethod({required String? query}) {
    try {
      final json = _fetchJson();
    } catch (e) {
      errorSnackBar(
          'Не удалось загрузить посты. Повторите попытку или воспользуйтесь поиском');
      return MainScreenEntity();
    }
    _convertJsonToPosts();
    return MainScreenEntity(
        posts: _posts, history: _history, newsQuery: _newsQuery);
  }

  MainScreenEntity readSavedPosts(String? storageKey) {
    String? storageJsonString;
    String? newsQuery;
    final Map<String, dynamic> json;
    List<Post> posts = [];

    if (storageKey == null) {
      final allStorageKeys = _storage.keys;
      if (allStorageKeys == null) {
        errorSnackBar('Воспользуйтесь поиском');
        return MainScreenEntity();
      }
      newsQuery = allStorageKeys.last;
      _history.historyWords
          .addAll(allStorageKeys.take(_history.maxLength).toList());
      storageJsonString = _storage.read(key: allStorageKeys.last);
    } else {
      storageJsonString = _storage.read(key: storageKey);
    }

    if (storageJsonString != null) {
      try {
        json = jsonDecode(storageJsonString);
        int jsonFromStorageLength = (json['response']['items']).length;
        for (int i = 0; i < jsonFromStorageLength; i++) {
          posts.add(Post.postFromJson(json, i));
        }
      } catch (e) {
        errorSnackBar('Не удалось загрузить посты. Воспользуйтесь поиском.');
        print('Ошибка readPostsFromStorage $e');
        return MainScreenEntity();
      }
    }
    print('readSavedPosts ${_history.historyWords}');
    return MainScreenEntity(
        posts: posts, history: _history, newsQuery: newsQuery);
  }

  Future<MainScreenEntity> updatePostsFromNet(String newsQuery) async {
    Map<String, dynamic> json;
    List<Post> posts = [];

    try {
      json = await VkApiClient().getPosts(newsQuery);
    } on VkApiClientException catch (e) {
      switch (e.errorType) {
        case ExceptionType.noNetwork:
          errorSnackBar(
              'Сервер недоступен. Проверьте подключение к интернету.');
          return MainScreenEntity();
        case ExceptionType.failedLoad:
          errorSnackBar('Не удалось загрузить посты. Повторите попытку.');
          return MainScreenEntity();
      }
    }

    FullOriginalPost originalPost = FullOriginalPost.fromJson(json);

    try {
      for (int i = 0; i < VkApiClient().newsCount; i++) {
        posts.add(Post.fromOriginaltoView(originalPost, i));
      }
    } catch (e) {
      errorSnackBar(
          'Недопустимый формат запроса. Попробуйте изменить текст запроса');
      return MainScreenEntity();
    }

    _history.markInHistory(newsQuery: newsQuery, json: json);

    return MainScreenEntity(
        posts: posts, history: _history, newsQuery: newsQuery);
  }
}

class MainScreenStoragePosts extends IMainScreenRepository {
  @override
  MainScreenEntity read({required String? query}) {
    final keys = _storage.keys;

    if (query == null && keys == null) {
      errorSnackBar('История поиска не найдена.Воспользуйтесь поиском');
      return MainScreenEntity();
    }
    if (keys != null) {
      _initHistory(words: keys);
    }

    return super.read(query: query);
  }

  @override
  _fetchJson() {
    final lastKey = _storage.keys?.last;
    q;
    if (lastKey != null) {
      _json = jsonDecode(_storage.read(key: lastKey).toString());
    }
  }

  @override
  void _convertJsonToPosts() {
    int jsonFromStorageLength = (_json?['response']['items']).length;
    for (int i = 0; i < jsonFromStorageLength; i++) {
      _posts?.add(Post.postFromJson(json, i));
    }
  }

  void _initHistory({required Set<String> words}) {
    _history.historyWords.addAll(words.take(_history.maxLength).toList());
  }
}
