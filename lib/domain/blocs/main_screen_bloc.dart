// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}

class PostsBloc extends Bloc<PostsEvents, PostsState> {
  PostsBloc() : super(const PostsState()) {
    on<PostsLoadFromServer>(_onPostsLoadFromServer);

    on<PostsLoadFromStorage>((event, emit) {});
  }

  Future<void> _onPostsLoadFromServer(
      PostsEvents event, Emitter<PostsState> emit) async {
    final Map<String, dynamic> json;
    final postDataProvider = const PostsDataProvider();
    if (state.newsQuery == '') return;
    try {
      //state.loadingInProgress = true;
      //notifyListeners();
      json = await VkApiClient().getPosts(state.newsQuery);
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
    state.posts.clear();
    for (int i = 0; i < VkApiClient().newsCount; i++) {
      state.posts.add(Post.postFromJson(json, i));
    }

    if (state.history.historyWords.length < state.history.maxLength) {
      state.history.historyWords.add(state.newsQuery);
      await postDataProvider.savePostsToStorageVerTwo(
          key: state.newsQuery, json: json);
    } else {
      state.history.historyWords.removeAt(0);
      state.history.historyWords.add(state.newsQuery);
      await postDataProvider
          .removeHistoryElementAtStorage(state.history.historyWords[0]);
      await postDataProvider.savePostsToStorageVerTwo(
          key: state.newsQuery, json: json);
    }
    //state.loadingInProgress = false;
    // notifyListeners();
  }
}
