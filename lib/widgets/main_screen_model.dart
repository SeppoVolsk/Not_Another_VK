import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vk_postman/domain/api_clients/response_posts/response_posts.dart';
import 'package:vk_postman/domain/data_providers/posts_data_provider.dart';
import 'package:vk_postman/domain/show_on_screen.dart';
import 'package:vk_postman/widgets/error_snack_bar.dart';
import '../domain/api_clients/vk_api_client.dart';
import '../post.dart';

class MainScreenPageModel extends ChangeNotifier {
  var _post = <Post>[];
  List<Post> get post => _post;
  final PostDataProvider = PostsDataProvider();

  final historyLength = 5;
  var historyWords = <String>[];

  final _storage = SharedPreferences.getInstance();
  bool loadingInProgress = true;
  dynamic _json;

  String newsQuery = '';
  String errorMessage = "";

  Future<void> loadPostsVerTwo() async {
    if (newsQuery == null || newsQuery == '') return;
    try {
      loadingInProgress = true;
      notifyListeners();
      _json = await VkApiClient().getPosts(newsQuery);
    } on VkApiClientException catch (e) {
      switch (e.errorType) {
        case ExceptionType.noNetwork:
          errorMessage =
              'Сервер недоступен. Проверьте подключение к интернету.';
          errorSnackBar(errorMessage: errorMessage);
          break;
        case ExceptionType.failedLoad:
          errorMessage = 'Не удалось загрузить посты. Повторите попытку.';
          errorSnackBar(errorMessage: errorMessage);
          break;
      }
    }

    _post.clear();
    for (int i = 0; i < VkApiClient().newsCount; i++) {
      _post.add(Post.postFromJson(_json, i));
    }

    if (historyWords.length < historyLength) {
      historyWords.add(newsQuery);
      await PostDataProvider.savePostsToStorageVerTwo(
          key: newsQuery, json: _json);
    } else {
      await updateHistoryInStorage();
    }
    loadingInProgress = false;
    notifyListeners();
  }

  // Future<void> savePostsToStorageVerTwo() async {
  //   final storage = await _storage;
  //   String jsonString = jsonEncode(_json);
  //   await storage.setString(newsQuery, jsonString);
  // }

  // Future<void> loadPostsFromStorageVerTwo(
  //     {String? neededStorageKey = null}) async {
  //   loadingInProgress = true;
  //   final storage = await _storage;

  //   String? storageJsonString;

  //   if (neededStorageKey == null) {
  //     final storageKeys = storage.getKeys();
  //     if (storageKeys.isEmpty) {
  //       errorMessage = 'Воспользуйтесь поиском';
  //       errorSnackBar(errorMessage: errorMessage);
  //       loadingInProgress = false;
  //       notifyListeners();
  //       return;
  //     }
  //     newsQuery = storageKeys.last;
  //     final storageLength = storageKeys.length;
  //     historyWords.addAll(storageKeys.take(historyLength).toList());
  //     storageJsonString = storage.getString(storageKeys.last);
  //   } else {
  //     _post.clear();
  //     storageJsonString = storage.getString(neededStorageKey);
  //   }

  //   if (storageJsonString != null) {
  //     try {
  //       _json = jsonDecode(storageJsonString);
  //       int jsonFromStorageLength = (_json['response']['items']).length;

  //       for (int i = 0; i < jsonFromStorageLength; i++) {
  //         _post.add(Post.postFromJson(_json, i));
  //       }
  //     } catch (e) {
  //       errorMessage = 'Не удалось загрузить посты. Воспользуйтесь поиском.';
  //       errorSnackBar(errorMessage: errorMessage);
  //       loadingInProgress = false;
  //       notifyListeners();
  //       return;
  //     }
  //     loadingInProgress = false;
  //     notifyListeners();
  //   }
  // }

  Future<void> updateHistoryInStorage() async {
    final storage = await _storage;
    String jsonString = jsonEncode(_json);
    await storage.remove(historyWords[0]);
    historyWords.removeAt(0);
    historyWords.add(newsQuery);
    await storage.setString(newsQuery, jsonString);
  }

  Future<void> removeHistoryElementAtStorage(String element) async {
    final storage = await _storage;
    await storage.remove(element);
  }
}

class MainScreenPageProvider extends InheritedNotifier {
  final MainScreenPageModel model;
  const MainScreenPageProvider(
      {Key? key, required Widget child, required this.model})
      : super(key: key, child: child, notifier: model);

  static MainScreenPageProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MainScreenPageProvider>();
  }

  static MainScreenPageProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<MainScreenPageProvider>()
        ?.widget;
    return widget is MainScreenPageProvider ? widget : null;
  }
}
