import 'dart:async';
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
  var _json = <String, dynamic>{};

  IMainScreenRepository? _nextHandler;
  IMainScreenRepository([this._nextHandler]);

  FutureOr<void> _fetchJson() async {}
  void _convertJsonToPosts() {}

  Future<MainScreenEntity> read({required String? query}) async =>
      await _templateMethod(query: query);

  Future<MainScreenEntity> _templateMethod({required String? query}) async {
    try {
      await _fetchJson();
      _convertJsonToPosts();
    } catch (e) {
      errorSnackBar(
          'Не удалось загрузить посты. Измените запрос или воспользуйтесь поиском');
      return const MainScreenEntity();
    }
    return MainScreenEntity(
        posts: _posts, history: _history, newsQuery: _newsQuery);
  }
}

class MainScreenInitialData extends IMainScreenRepository with JsonToPost {
  static Set<String>? _keys;

  MainScreenInitialData([IMainScreenRepository? _nextHandler]);

  @override
  Future<MainScreenEntity> read({required String? query}) async {
    if (query != null) _nextHandler?.read(query: query);
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
    _newsQuery = _keys?.last;
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertJsonToPosts(_json);

  void _initHistory({required Set<String>? words}) => IMainScreenRepository
      ._history.historyWords
      .addAll(words!.take(IMainScreenRepository._history.maxLength).toList());
}

class MainScreenCachedData extends IMainScreenRepository with JsonToPost {
  MainScreenCachedData([IMainScreenRepository? _nextHandler]);

  @override
  Future<MainScreenEntity> read({required String? query}) async {
    if (!IMainScreenRepository._history.historyWords.contains(query)) {
      return _nextHandler!.read(query: query);
    }
    return super.read(query: _newsQuery = query);
  }

  @override
  void _fetchJson() {
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertJsonToPosts(_json);
}

class MainScreenNetworkData extends IMainScreenRepository with JsonToPost {
  @override
  Future<MainScreenEntity> read({required String? query}) async =>
      super.read(query: _newsQuery = query);

  @override
  void _fetchJson() async => _json = await VkApiClient().getPosts(_newsQuery);

  @override
  void _convertJsonToPosts() {
    FullOriginalPost originalPost = FullOriginalPost.fromJson(_json);
    try {
      __convertJsonToPosts(originalPost);
    } catch (e) {
      rethrow;
    }
    IMainScreenRepository._history
        .markInHistory(newsQuery: _newsQuery!, json: _json);
  }
}

mixin JsonToPost on IMainScreenRepository {
  void __convertJsonToPosts<T>([T? source]) {
    final sourceLength;
    switch (T) {
      case Map<String, dynamic>:
        sourceLength = _json['response']['items'].length;
        for (int i = 0; i < sourceLength; i++) {
          _posts.add(Post.postFromJson(source, i));
        }
        break;
      case FullOriginalPost:
        sourceLength = VkApiClient().newsCount;
        try {
          for (int i = 0; i < sourceLength; i++) {
            _posts.add(Post.fromOriginaltoView(source as FullOriginalPost, i));
          }
        } catch (e) {
          //errorSnackBar('Некорректный запрос. Попробуйте еще раз');
          rethrow;
        }
        break;
    }
  }
}
