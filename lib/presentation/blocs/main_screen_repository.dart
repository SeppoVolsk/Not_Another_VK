import 'dart:convert';

import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/data/data_providers/posts_data_provider.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';
import 'package:vk_postman/presentation/widgets/error_snack_bar.dart';

class IMainScreenRepository {
  Future<MainScreenEntity> readPostsFromStorage(String? storageKey) async {
    String? storageJsonString;
    String? newsQuery;
    const postDataProvider = PostsDataProvider();
    final history = HistoryDataProvider();
    final Map<String, dynamic> json;
    List<Post> posts = [];
    //if (event is PostsLoadFromStorage) {
    if (storageKey == null) {
      final storageKeys = await postDataProvider.getStorageKeys();
      if (storageKeys.isEmpty) {
        errorSnackBar('Воспользуйтесь поиском');
        return MainScreenEntity();
      }
      newsQuery = storageKeys.last;
      // history.historyWords
      //     .addAll(storageKeys.take(state.history.maxLength).toList());
      storageJsonString =
          await postDataProvider.getStringFromStorage(key: storageKeys.last);
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
    return MainScreenEntity(
      posts: posts,
      history: history,
      newsQuery: newsQuery,
      loadingInProgress: false,
    );
  }

  Future<MainScreenEntity> updatePostsFromNet(String newsQuery) async {
    print('update');
    Map<String, dynamic> json = {};
    List<Post> posts = [];
    final history = HistoryDataProvider();
    //const postDataProvider = PostsDataProvider();

    //if (event is PostsLoadFromServer && event.newsQuery == null) return;
    try {
      //emit(state.copyWith(loadingInProgress: true));

      //if (event is PostsLoadFromServer) {
      json = await VkApiClient().getPosts(newsQuery);

      //}
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

    return MainScreenEntity(
        posts: posts,
        history: history,
        newsQuery: newsQuery,
        loadingInProgress: false);
  }
}
