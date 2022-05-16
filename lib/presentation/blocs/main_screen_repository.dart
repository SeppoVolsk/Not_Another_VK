import 'dart:convert';

import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/data/data_providers/posts_data_provider.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';
import 'package:vk_postman/presentation/widgets/error_snack_bar.dart';

class IMainScreenRepository {
  final history = HistoryDataProvider();

  Future<MainScreenEntity> readPostsFromStorage(String? storageKey) async {
    String? storageJsonString;
    String? newsQuery;
    const postDataProvider = PostsDataProvider();

    final Map<String, dynamic> json;
    List<Post> posts = [];

    if (storageKey == null) {
      final allStorageKeys = await postDataProvider.getStorageKeys();
      if (allStorageKeys.isEmpty) {
        errorSnackBar('Воспользуйтесь поиском');
        return MainScreenEntity();
      }
      newsQuery = allStorageKeys.last;
      history.historyWords
          .addAll(allStorageKeys.take(history.maxLength).toList());
      storageJsonString =
          await postDataProvider.getStringFromStorage(key: allStorageKeys.last);
    } else {
      storageJsonString =
          await postDataProvider.getStringFromStorage(key: storageKey);
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
        return MainScreenEntity();
      }
    }
    print('readFromStorage ${history.historyWords}');
    return MainScreenEntity(
      posts: posts,
      history: history,
      newsQuery: newsQuery,
      loadingInProgress: false,
    );
  }

  Future<MainScreenEntity> updatePostsFromNet(String newsQuery) async {
    Map<String, dynamic> json;
    List<Post> posts = [];
    //final history = HistoryDataProvider();

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

    for (int i = 0; i < VkApiClient().newsCount; i++) {
      posts.add(Post.fromOriginaltoView(originalPost, i));
    }

    history.markInHistory(newsQuery: newsQuery, json: json);

    return MainScreenEntity(
        posts: posts,
        history: history,
        newsQuery: newsQuery,
        loadingInProgress: false);
  }
}
