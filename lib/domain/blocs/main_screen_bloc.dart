// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import 'package:vk_postman/domain/api_clients/vk_api_client.dart';
import 'package:vk_postman/domain/data_providers/history_data_provider.dart';
import 'package:vk_postman/domain/data_providers/posts_data_provider.dart';
import 'package:vk_postman/post.dart';
import 'package:vk_postman/widgets/error_snack_bar.dart';

abstract class PostsEvents {}

class PostsLoadFromServer extends PostsEvents {
  String? newsQuery;
  PostsLoadFromServer({
    this.newsQuery,
  });
}

class PostsLoadFromStorage extends PostsEvents {
  String? storageKey;
  PostsLoadFromStorage({
    this.storageKey,
  });
}

class PostsState {
  const PostsState({
    this.posts = const <Post>[],
    this.history = const HistoryDataProvider(),
    this.loadingInProgress = true,
    this.newsQuery = '',
  });

  final List<Post> posts;
  final HistoryDataProvider history;
  final bool loadingInProgress;
  final String newsQuery;

  PostsState copyWith({
    List<Post>? posts,
    HistoryDataProvider? history,
    bool? loadingInProgress,
    String? newsQuery,
  }) {
    return PostsState(
      posts: posts ?? this.posts,
      history: history ?? this.history,
      loadingInProgress: loadingInProgress ?? this.loadingInProgress,
      newsQuery: newsQuery ?? this.newsQuery,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostsState &&
        listEquals(other.posts, posts) &&
        other.history == history &&
        other.loadingInProgress == loadingInProgress &&
        other.newsQuery == newsQuery;
  }

  @override
  int get hashCode {
    return posts.hashCode ^
        history.hashCode ^
        loadingInProgress.hashCode ^
        newsQuery.hashCode;
  }
}

class PostsBloc extends Bloc<PostsEvents, PostsState> {
  PostsBloc() : super(const PostsState()) {
    on<PostsLoadFromServer>(_onPostsLoadFromServer);

    on<PostsLoadFromStorage>(_onPostsLoadFromStorage);
  }

  Future<void> _onPostsLoadFromServer(
      PostsEvents event, Emitter<PostsState> emit) async {
    Map<String, dynamic> json = {};
    List<Post> posts = [];
    final history = HistoryDataProvider();
    //const postDataProvider = PostsDataProvider();
    String? newsQuery;

    if (event is PostsLoadFromServer && event.newsQuery == null) return;
    try {
      emit(state.copyWith(loadingInProgress: true));
      //state.loadingInProgress = true;
      //notifyListeners();

      if (event is PostsLoadFromServer) {
        json = await VkApiClient().getPosts(event.newsQuery!);
        newsQuery = event.newsQuery;
      }
    } on VkApiClientException catch (e) {
      switch (e.errorType) {
        case ExceptionType.noNetwork:
          errorSnackBar(
              'Сервер недоступен. Проверьте подключение к интернету.');
          return;
        case ExceptionType.failedLoad:
          errorSnackBar('Не удалось загрузить посты. Повторите попытку.');
          return;
      }
    }
    //state.posts.clear();
    for (int i = 0; i < VkApiClient().newsCount; i++) {
      posts.add(Post.postFromJson(json, i));
    }

    // if (state.history.historyWords.length < history.maxLength &&
    //     event is PostsLoadFromServer) {
    //   history.historyWords.add(event.newsQuery!);
    //   await postDataProvider.savePostsToStorageVerTwo(
    //       key: event.newsQuery!, json: json);
    // } else {
    //   history.historyWords.removeAt(0);
    //   history.historyWords.add(state.newsQuery);
    //   await postDataProvider
    //       .removeHistoryElementAtStorage(history.historyWords[0]);
    //   await postDataProvider.savePostsToStorageVerTwo(
    //       key: state.newsQuery, json: json);
    // }
    emit(state.copyWith(
      posts: posts,
      history: history,
      newsQuery: newsQuery,
      loadingInProgress: false,
    ));
    //state.loadingInProgress = false;
    // notifyListeners();
  }

  Future<void> _onPostsLoadFromStorage(
      PostsEvents event, Emitter<PostsState> emit) async {
    //loadingInProgress = true;
    String? storageJsonString;
    String? newsQuery;
    const postDataProvider = PostsDataProvider();
    final history = HistoryDataProvider();
    final Map<String, dynamic> json;
    List<Post> posts = [];
    if (event is PostsLoadFromStorage) {
      if (event.storageKey == null) {
        final storageKeys = await postDataProvider.getStorageKeys();
        if (storageKeys.isEmpty) {
          errorSnackBar('Воспользуйтесь поиском');
          emit(state.copyWith(loadingInProgress: false));
          // loadingInProgress = false;
          // notifyListeners();
          return;
        }
        newsQuery = storageKeys.last;
        // history.historyWords
        //     .addAll(storageKeys.take(state.history.maxLength).toList());
        storageJsonString =
            await postDataProvider.getStringFromStorage(key: storageKeys.last);
      } else {
        //_posts.clear();
        storageJsonString =
            await postDataProvider.getStringFromStorage(key: event.storageKey!);
      }
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
        emit(state.copyWith(loadingInProgress: false));
        //loadingInProgress = false;
        //notifyListeners();
        return;
      }
      emit(state.copyWith(
        posts: posts,
        history: history,
        newsQuery: newsQuery,
        loadingInProgress: false,
      ));
      // loadingInProgress = false;
      // notifyListeners();
    }
  }
}
