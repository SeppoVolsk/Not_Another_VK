import 'dart:convert';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';
import 'package:vk_postman/presentation/widgets/error_snack_bar.dart';

class IMainScreenRepository {
  final _storage = PersistentStorage();

  final _posts = <Post>[];
  static final _history = HistoryDataProvider();
  String? _newsQuery;
  Map<String, dynamic>? _json;

  void _fetchJson() {}
  void _convertJsonToPosts() {}

  MainScreenEntity read({required String? query}) =>
      _templateMethod(query: query);

  MainScreenEntity _templateMethod({required String? query}) {
    try {
      _fetchJson();
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

class MainScreenInitialData extends IMainScreenRepository with JsonToPost {
  static Set<String>? _keys;

  @override
  MainScreenEntity read({required String? query}) {
    _keys = _storage.keys;
    if (_keys == null) {
      errorSnackBar('История поиска не найдена.Воспользуйтесь поиском');
      return const MainScreenEntity();
    }
    _initHistory(words: _keys);
    return super.read(query: null);
  }

  @override
  void _fetchJson() {
    final _newsQuery = _keys?.last;
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertJsonToPosts();

  void _initHistory({required Set<String>? words}) => words != null
      ? IMainScreenRepository._history.historyWords
          .addAll(words.take(IMainScreenRepository._history.maxLength).toList())
      : errorSnackBar('Не удалось инициилизировать историю');
}

class MainScreenCachedData extends IMainScreenRepository with JsonToPost {
  @override
  MainScreenEntity read({required String? query}) {
    _newsQuery = query;
    print('CACHED DATA HISTORY ${IMainScreenRepository._history.historyWords}');
    return super.read(query: query);
  }

  @override
  _fetchJson() {
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertJsonToPosts();
}

mixin JsonToPost on IMainScreenRepository {
  void __convertJsonToPosts() {
    int jsonFromStorageLength = _json?['response']['items'].length;
    for (int i = 0; i < jsonFromStorageLength; i++) {
      _posts.add(Post.postFromJson(_json, i));
    }
  }
}
