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

  final IMainScreenRepository? _nextHandler;
  IMainScreenRepository([this._nextHandler]);

  FutureOr<void> _fetchJson() async {}

  void _convertJsonToPosts() {}

  Future<MainScreenEntity> read([String? query]) =>
      _templateMethod(query: query);

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
        posts: _posts,
        history: IMainScreenRepository._history,
        newsQuery: _newsQuery);
  }
}

class MainScreenInitialData extends IMainScreenRepository with SourceToPost {
  static Set<String>? _keys;

  MainScreenInitialData([IMainScreenRepository? _nextHandler])
      : super(_nextHandler);

  @override
  Future<MainScreenEntity> read([String? query]) async {
    if (query != null) return _nextHandler!.read(query);
    _keys = _storage.keys;
    if (_keys == null) {
      errorSnackBar('История поиска не найдена.Воспользуйтесь поиском');
      return const MainScreenEntity();
    }
    IMainScreenRepository._history.firstInit(words: _keys!);
    return super.read();
  }

  @override
  void _fetchJson() {
    _newsQuery = _keys?.last;
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertSourceToPosts(_json);
}

class MainScreenCachedData extends IMainScreenRepository with SourceToPost {
  MainScreenCachedData([IMainScreenRepository? _nextHandler])
      : super(_nextHandler);

  @override
  Future<MainScreenEntity> read([String? query]) {
    if (!IMainScreenRepository._history.historyWords.contains(query)) {
      return _nextHandler!.read(query);
    }
    return super.read(_newsQuery = query);
  }

  @override
  void _fetchJson() {
    String? jsonString;
    jsonString = _storage.read(key: _newsQuery!);
    if (jsonString != null) _json = jsonDecode(jsonString);
  }

  @override
  void _convertJsonToPosts() => __convertSourceToPosts(_json);
}

class MainScreenNetworkData extends IMainScreenRepository with SourceToPost {
  @override
  Future<MainScreenEntity> read([String? query]) =>
      super.read(_newsQuery = query);

  @override
  void _fetchJson() async => _json = await VkApiClient().getPosts(_newsQuery);

  @override
  void _convertJsonToPosts() {
    FullOriginalPost originalPost = FullOriginalPost.fromJson(_json);
    try {
      __convertSourceToPosts(originalPost);
    } catch (e) {
      rethrow;
    }
    IMainScreenRepository._history
        .makeMarks(newsQuery: _newsQuery!, json: _json);
  }
}

mixin SourceToPost on IMainScreenRepository {
  void __convertSourceToPosts<T>([T? source]) async {
    final int sourceLength;
    _posts.clear();
    switch (T) {
      case Map<String, dynamic>:
        //sourceLength = _json['response']['items'].length;
        // for (int i = 0; i < sourceLength; i++) {
        //   _posts.add(Post.postFromJson(source, i));
        // }
        await for (Post p in Post().from(source as Map)) {
          _posts.add(p);
        }
        break;
      case FullOriginalPost:
        sourceLength = VkApiClient().newsCount;
        try {
          for (int i = 0; i < sourceLength; i++) {
            _posts
                .add(Post().fromOriginaltoView(source as FullOriginalPost, i));
          }
        } catch (e) {
          rethrow;
        }
        break;
    }
  }
}
