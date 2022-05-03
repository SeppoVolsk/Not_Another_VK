import 'package:bloc/bloc.dart';

import 'package:vk_postman/domain/api_clients/vk_api_client.dart';
import 'package:vk_postman/domain/data_providers/history_data_provider.dart';
import 'package:vk_postman/domain/data_providers/posts_data_provider.dart';
import 'package:vk_postman/post.dart';
import 'package:vk_postman/widgets/error_snack_bar.dart';

abstract class PostsEvents {}

class PostsLoadFromServer implements PostsEvents {}

class PostsLoadFromStorage implements PostsEvents {
  String? storageKey;
  PostsLoadFromStorage({
    this.storageKey,
  });
}

class PostsState {
  final posts = <Post>[];
  List<Post> get post => posts;

  final postDataProvider = PostsDataProvider();
  final history = HistoryDataProvider();

  bool loadingInProgress;
  dynamic json;

  String newsQuery;
  String errorMessage;

  PostsState({
    this.loadingInProgress = true,
    this.json,
    this.newsQuery = '',
    this.errorMessage = '',
  });

  PostsState copyWith({
    bool? loadingInProgress,
    dynamic json,
    String? newsQuery,
    String? errorMessage,
  }) {
    return PostsState(
      loadingInProgress: loadingInProgress ?? this.loadingInProgress,
      json: json ?? this.json,
      newsQuery: newsQuery ?? this.newsQuery,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostsState &&
        other.loadingInProgress == loadingInProgress &&
        other.json == json &&
        other.newsQuery == newsQuery &&
        other.errorMessage == errorMessage;
  }

  @override
  int get hashCode {
    return loadingInProgress.hashCode ^
        json.hashCode ^
        newsQuery.hashCode ^
        errorMessage.hashCode;
  }
}

class PostsBloc extends Bloc<PostsEvents, PostsState> {
  PostsBloc() : super(PostsState()) {
    on<PostsLoadFromServer>((event, emit) async {
      if (state.newsQuery == '') return;
      try {
        //state.loadingInProgress = true;
        //notifyListeners();
        state.json = await VkApiClient().getPosts(state.newsQuery);
      } on VkApiClientException catch (e) {
        switch (e.errorType) {
          case ExceptionType.noNetwork:
            state.errorMessage =
                'Сервер недоступен. Проверьте подключение к интернету.';
            errorSnackBar(errorMessage: state.errorMessage);
            return;
          case ExceptionType.failedLoad:
            state.errorMessage =
                'Не удалось загрузить посты. Повторите попытку.';
            errorSnackBar(errorMessage: state.errorMessage);
            return;
        }
      }
      state.posts.clear();
      for (int i = 0; i < VkApiClient().newsCount; i++) {
        state.posts.add(Post.postFromJson(state.json, i));
      }

      if (state.history.historyWords.length < state.history.maxLength) {
        state.history.historyWords.add(state.newsQuery);
        await state.postDataProvider
            .savePostsToStorageVerTwo(key: state.newsQuery, json: state.json);
      } else {
        state.history.historyWords.removeAt(0);
        state.history.historyWords.add(state.newsQuery);
        await state.postDataProvider
            .removeHistoryElementAtStorage(state.history.historyWords[0]);
        await state.postDataProvider
            .savePostsToStorageVerTwo(key: state.newsQuery, json: state.json);
      }
      //state.loadingInProgress = false;
      // notifyListeners();
    });

    on<PostsLoadFromStorage>((event, emit) {});
  }
}
