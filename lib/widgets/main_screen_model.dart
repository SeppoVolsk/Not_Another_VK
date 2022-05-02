import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:vk_postman/domain/data_providers/history_data_provider.dart';
import 'package:vk_postman/domain/data_providers/posts_data_provider.dart';

import 'package:vk_postman/widgets/error_snack_bar.dart';
import '../domain/api_clients/vk_api_client.dart';
import '../post.dart';

class MainScreenPageModel extends ChangeNotifier {
  final _posts = <Post>[];
  List<Post> get post => _posts;
  final postDataProvider = PostsDataProvider();
  final history = HistoryDataProvider();

  bool loadingInProgress = true;
  dynamic _json;

  String newsQuery = '';
  String errorMessage = "";

  Future<void> loadPostsFromServer() async {
    if (newsQuery == '') return;
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
          return;
        case ExceptionType.failedLoad:
          errorMessage = 'Не удалось загрузить посты. Повторите попытку.';
          errorSnackBar(errorMessage: errorMessage);
          return;
      }
    }
    _posts.clear();
    for (int i = 0; i < VkApiClient().newsCount; i++) {
      _posts.add(Post.postFromJson(_json, i));
    }

    if (history.historyWords.length < history.maxLength) {
      history.historyWords.add(newsQuery);
      await postDataProvider.savePostsToStorageVerTwo(
          key: newsQuery, json: _json);
    } else {
      history.historyWords.removeAt(0);
      history.historyWords.add(newsQuery);
      await postDataProvider
          .removeHistoryElementAtStorage(history.historyWords[0]);
      await postDataProvider.savePostsToStorageVerTwo(
          key: newsQuery, json: _json);
    }
    loadingInProgress = false;
    notifyListeners();
  }

  Future<void> loadPostsFromStorage({String? neededStorageKey}) async {
    loadingInProgress = true;
    String? storageJsonString;

    if (neededStorageKey == null) {
      final storageKeys = await postDataProvider.getStorageKeys();
      if (storageKeys.isEmpty) {
        errorMessage = 'Воспользуйтесь поиском';
        errorSnackBar(errorMessage: errorMessage);
        loadingInProgress = false;
        notifyListeners();
        return;
      }
      newsQuery = storageKeys.last;
      history.historyWords.addAll(storageKeys.take(history.maxLength).toList());
      storageJsonString =
          await postDataProvider.getStringFromStorage(key: storageKeys.last);
    } else {
      _posts.clear();
      storageJsonString =
          await postDataProvider.getStringFromStorage(key: neededStorageKey);
    }

    if (storageJsonString != null) {
      try {
        _json = jsonDecode(storageJsonString);
        int jsonFromStorageLength = (_json['response']['items']).length;
        for (int i = 0; i < jsonFromStorageLength; i++) {
          _posts.add(Post.postFromJson(_json, i));
        }
      } catch (e) {
        errorMessage = 'Не удалось загрузить посты. Воспользуйтесь поиском.';
        errorSnackBar(errorMessage: errorMessage);
        loadingInProgress = false;
        notifyListeners();
        return;
      }
      loadingInProgress = false;
      notifyListeners();
    }
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
