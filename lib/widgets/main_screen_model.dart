import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vk_postman/domain/api_clients/response_posts/response_posts.dart';
import 'package:vk_postman/domain/show_on_screen.dart';
import 'package:vk_postman/widgets/error_snack_bar.dart';
import '../domain/api_clients/vk_api_client.dart';
import '../post.dart';

class MainScreenPageModel extends ChangeNotifier {
  var _post = <Post>[];
  List<Post> get post => _post;

  final historyLength = 5;
  var historyWords = <String>[];

  final _storage = SharedPreferences.getInstance();
  bool loadingInProgress = true;
  dynamic _json;

  String newsQuery = '';
  String errorMessage = "";
  //ResponsePosts? allPosts;
  // ShowOnScreen? show;

  // Future<void> loadResponsePosts() async {
  //   String jsonString;
  //   jsonString = await VkApiClient().getPosts(newsQuery);
  //   allPosts = ResponsePosts.fromJson(jsonString);
  //   show = ShowOnScreen(allPosts);
  // }

  // Future<void> loadPosts() async {
  //   dynamic post;
  //   try {
  //     loadingInProgress = true;
  //     post = await VkApiClient().getPosts(newsQuery);
  //   } on VkApiClientException catch (e) {
  //     switch (e.errorType) {
  //       case ExceptionType.noNetwork:
  //         errorMessage =
  //             'Сервер недоступен. Проверьте подключение к интернету.';
  //         errorSnackBar(errorMessage: errorMessage);
  //         break;
  //       case ExceptionType.failedLoad:
  //         errorMessage = 'Не удалось загрузить посты. Повторите попытку.';
  //         errorSnackBar(errorMessage: errorMessage);
  //         break;
  //     }
  //   }
  //   _post.clear();
  //   _post.addAll(post);
  //   loadingInProgress = false;
  //   notifyListeners();
  //   await savePostsToStorage();
  // }

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
      await savePostsToStorageVerTwo();
    } else {
      await updateHistoryInStorage();
    }
    loadingInProgress = false;
    notifyListeners();
  }

  // Future<void> savePostsToStorage() async {
  //   final storage = await _storage;
  //   await storage.clear();
  //   String storagePostString;
  //   for (int i = 0; i < _post.length; i++) {
  //     Map<String, dynamic> postToMap() => {
  //           _SharedPreferencesKeys.userIdKey: _post[i].userId,
  //           _SharedPreferencesKeys.firstNameKey: _post[i].firstName,
  //           _SharedPreferencesKeys.surNameKey: _post[i].surName,
  //           _SharedPreferencesKeys.userPhotoKey: _post[i].userPhoto,
  //           _SharedPreferencesKeys.postTextKey: _post[i].postText,
  //           _SharedPreferencesKeys.postPhotoKey: List.generate(
  //               _post[i].postPhoto.length, (ind) => _post[i].postPhoto[ind])
  //         };
  //     storagePostString = (jsonEncode(postToMap()));
  //     await storage.setString(i.toString(), storagePostString);
  //   }
  // }

  Future<void> savePostsToStorageVerTwo() async {
    final storage = await _storage;
    String jsonString = jsonEncode(_json);
    await storage.setString(newsQuery, jsonString);
  }

  Future<void> loadPostsFromStorageVerTwo(
      [String? neededStorageKey = null]) async {
    loadingInProgress = true;
    final storage = await _storage;

    String? storageJsonString;

    if (neededStorageKey == null) {
      final storageKeys = storage.getKeys();
      if (storageKeys.isEmpty) {
        errorMessage = 'Воспользуйтесь поиском';
        errorSnackBar(errorMessage: errorMessage);
        loadingInProgress = false;
        notifyListeners();
        return;
      }
      newsQuery = storageKeys.last;
      final storageLength = storageKeys.length;
      historyWords.addAll(storageKeys.take(historyLength).toList());
      storageJsonString = storage.getString(storageKeys.last);
    } else {
      _post.clear();
      storageJsonString = storage.getString(neededStorageKey);
    }

    if (storageJsonString != null) {
      try {
        _json = jsonDecode(storageJsonString);
        int jsonFromStorageLength = (_json['response']['items']).length;

        for (int i = 0; i < jsonFromStorageLength; i++) {
          _post.add(Post.postFromJson(_json, i));
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
  // Future<void> loadPostsFromStorage() async {
  //   final storage = await _storage;
  //   String? storagePostString;
  //   dynamic json;
  //   final storageKeys = storage.getKeys();
  //   if (storageKeys.isEmpty) {
  //     errorMessage = 'Воспользуйтесь поиском';
  //     errorSnackBar(errorMessage: errorMessage);
  //     return;
  //   }
  //   final storageMaxKey = (storageKeys.map((e) => int.parse(e))).toList()
  //     ..sort();

  //   for (int i = 0; i <= storageMaxKey.last; i++) {
  //     storagePostString = storage.getString(i.toString());
  //     if (storagePostString != null) {
  //       json = jsonDecode(storagePostString);

  //       _post.add(Post(
  //           userId: json[_SharedPreferencesKeys.userIdKey],
  //           firstName: json[_SharedPreferencesKeys.firstNameKey],
  //           surName: json[_SharedPreferencesKeys.surNameKey],
  //           userPhoto: json[_SharedPreferencesKeys.userPhotoKey],
  //           postText: json[_SharedPreferencesKeys.postTextKey],
  //           postPhoto: List.generate(
  //               json[_SharedPreferencesKeys.postPhotoKey].length,
  //               (ind) => json[_SharedPreferencesKeys.postPhotoKey][ind])));
  //     } else {
  //       errorMessage = 'Воспользуйтесь поиском';
  //       errorSnackBar(errorMessage: errorMessage);
  //       break;
  //     }
  //   }
  //   loadingInProgress = false;
  //   notifyListeners();
  // }
}

// abstract class _SharedPreferencesKeys {
//   static const String userIdKey = 'userId';
//   static const String firstNameKey = 'firstName';
//   static const String surNameKey = 'surName';
//   static const String userPhotoKey = 'userPhoto';
//   static const String postTextKey = 'postText';
//   static const String postPhotoKey = 'postPhoto';
// }

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
