// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:vk_postman/data/api_clients/vk_api_client.dart';
// import 'package:vk_postman/data/data_providers/history_data_provider.dart';
// import 'package:vk_postman/data/data_providers/posts_data_provider.dart';
// import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';

// import 'package:vk_postman/domain/entities/post.dart';

// import 'package:vk_postman/presentation/widgets/error_snack_bar.dart';

// abstract class PostsEvents {}

// class PostsLoadFromServer extends PostsEvents {
//   String? newsQuery;
//   PostsLoadFromServer({
//     this.newsQuery,
//   });
// }

// class PostsLoadFromStorage extends PostsEvents {
//   String? storageKey;
//   PostsLoadFromStorage({
//     this.storageKey,
//   });
// }

// class PostsState {
//   const PostsState({
//     this.posts = const <Post>[],
//     this.history = const HistoryDataProvider(),
//     this.loadingInProgress = true,
//     this.newsQuery = '',
//   });

//   final List<Post> posts;
//   final HistoryDataProvider history;
//   final bool loadingInProgress;
//   final String newsQuery;

//   PostsState copyWith({
//     List<Post>? posts,
//     HistoryDataProvider? history,
//     bool? loadingInProgress,
//     String? newsQuery,
//   }) {
//     return PostsState(
//       posts: posts ?? this.posts,
//       history: history ?? this.history,
//       loadingInProgress: loadingInProgress ?? this.loadingInProgress,
//       newsQuery: newsQuery ?? this.newsQuery,
//     );
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is PostsState &&
//         listEquals(other.posts, posts) &&
//         other.history == history &&
//         other.loadingInProgress == loadingInProgress &&
//         other.newsQuery == newsQuery;
//   }

//   @override
//   int get hashCode {
//     return posts.hashCode ^
//         history.hashCode ^
//         loadingInProgress.hashCode ^
//         newsQuery.hashCode;
//   }
// }

// class PostsBloc extends Bloc<PostsEvents, PostsState> {
//   PostsBloc() : super(const PostsState()) {
//     on<PostsLoadFromServer>(_onPostsLoadFromServer);

//     on<PostsLoadFromStorage>(_onPostsLoadFromStorage);
//   }

//   Future<void> _onPostsLoadFromServer(
//       PostsEvents event, Emitter<PostsState> emit) async {
//     Map<String, dynamic> json = {};
//     List<Post> posts = [];
//     final history = HistoryDataProvider();
//     //const postDataProvider = PostsDataProvider();
//     String? newsQuery;

//     if (event is PostsLoadFromServer && event.newsQuery == null) return;
//     try {
//       emit(state.copyWith(loadingInProgress: true));

//       if (event is PostsLoadFromServer) {
//         json = await VkApiClient().getPosts(event.newsQuery!);
//         newsQuery = event.newsQuery;
//       }
//     } on VkApiClientException catch (e) {
//       switch (e.errorType) {
//         case ExceptionType.noNetwork:
//           errorSnackBar(
//               'Сервер недоступен. Проверьте подключение к интернету.');
//           return;
//         case ExceptionType.failedLoad:
//           errorSnackBar('Не удалось загрузить посты. Повторите попытку.');
//           return;
//       }
//     }
//     /*
//     for (int i = 0; i < VkApiClient().newsCount; i++) {
//       posts.add(Post.postFromJson(json, i));
//     }
//     */

//     FullOriginalPost originalPost = FullOriginalPost.fromJson(json);
//     //print(originalPost.items?[0].id);
//     for (int i = 0; i < VkApiClient().newsCount; i++) {
//       posts.add(Post.fromOriginaltoView(originalPost, i));
//     }

//     // if (state.history.historyWords.length < history.maxLength &&
//     //     event is PostsLoadFromServer) {
//     //   history.historyWords.add(event.newsQuery!);
//     //   await postDataProvider.savePostsToStorageVerTwo(
//     //       key: event.newsQuery!, json: json);
//     // } else {
//     //   history.historyWords.removeAt(0);
//     //   history.historyWords.add(state.newsQuery);
//     //   await postDataProvider
//     //       .removeHistoryElementAtStorage(history.historyWords[0]);
//     //   await postDataProvider.savePostsToStorageVerTwo(
//     //       key: state.newsQuery, json: json);
//     // }
//     emit(state.copyWith(
//       posts: posts,
//       history: history,
//       newsQuery: newsQuery,
//       loadingInProgress: false,
//     ));
//     //state.loadingInProgress = false;
//     // notifyListeners();
//   }

//   Future<void> _onPostsLoadFromStorage(
//       PostsEvents event, Emitter<PostsState> emit) async {
//     //loadingInProgress = true;
//     String? storageJsonString;
//     String? newsQuery;
//     const postDataProvider = PostsDataProvider();
//     final history = HistoryDataProvider();
//     final Map<String, dynamic> json;
//     List<Post> posts = [];
//     if (event is PostsLoadFromStorage) {
//       if (event.storageKey == null) {
//         final storageKeys = await postDataProvider.getStorageKeys();
//         if (storageKeys.isEmpty) {
//           errorSnackBar('Воспользуйтесь поиском');
//           emit(state.copyWith(loadingInProgress: false));
//           // loadingInProgress = false;
//           // notifyListeners();
//           return;
//         }
//         newsQuery = storageKeys.last;
//         // history.historyWords
//         //     .addAll(storageKeys.take(state.history.maxLength).toList());
//         storageJsonString =
//             await postDataProvider.getStringFromStorage(key: storageKeys.last);
//       } else {
//         //_posts.clear();
//         storageJsonString =
//             await postDataProvider.getStringFromStorage(key: event.storageKey!);
//       }
//     }

//     if (storageJsonString != null) {
//       try {
//         json = jsonDecode(storageJsonString);
//         int jsonFromStorageLength = (json['response']['items']).length;
//         for (int i = 0; i < jsonFromStorageLength; i++) {
//           posts.add(Post.postFromJson(json, i));
//         }
//       } catch (e) {
//         errorSnackBar('Не удалось загрузить посты. Воспользуйтесь поиском.');
//         emit(state.copyWith(loadingInProgress: false));
//         //loadingInProgress = false;
//         //notifyListeners();
//         return;
//       }
//       emit(state.copyWith(
//         posts: posts,
//         history: history,
//         newsQuery: newsQuery,
//         loadingInProgress: false,
//       ));
//       // loadingInProgress = false;
//       // notifyListeners();
//     }
//   }
// }
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';
import 'package:vk_postman/presentation/blocs/mainscreenentity.dart';

//import 'package:l/l.dart';

part 'main_screen_bloc.freezed.dart';

/* MainScreen Events */

@freezed
class MainScreenEvent with _$MainScreenEvent {
  const MainScreenEvent._();

  //const factory MainScreenEvent.create() = CreateMainScreenEvent;

  const factory MainScreenEvent.read(String? storageKey) = ReadMainScreenEvent;

  const factory MainScreenEvent.update(String newsQuery) =
      UpdateMainScreenEvent;

  //const factory MainScreenEvent.delete() = DeleteMainScreenEvent;
}

/* MainScreen States */

@freezed
class MainScreenState with _$MainScreenState {
  const MainScreenState._();

  /// Idling state
  const factory MainScreenState.idle({
    required final MainScreenEntity data,
    @Default('Idle') final String message,
  }) = IdleMainScreenState;

  /// Processing
  const factory MainScreenState.processing({
    required final MainScreenEntity data,
    @Default('Processing') final String message,
  }) = ProcessingMainScreenState;

  /// Successful
  const factory MainScreenState.successful({
    required final MainScreenEntity data,
    @Default('Successful') final String message,
  }) = SuccessfulMainScreenState;

  const factory MainScreenState.error({
    required final MainScreenEntity data,
    @Default('Error') final String message,
  }) = ErrorMainScreenState;
}

// class PostsBloc extends Bloc<PostsEvents, PostsState> {
//   PostsBloc() : super(const PostsState())
/// Buisiness Logic Component MainScreenBLoC
class MainScreenBLoC extends Bloc<MainScreenEvent, MainScreenState>
    implements EventSink<MainScreenEvent> {
  MainScreenBLoC({
    required final IMainScreenRepository repository,
    final MainScreenState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              MainScreenState.idle(
                data: MainScreenEntity(),
                message: 'Initial idle state',
              ),
        ) {
    on<MainScreenEvent>(
      (event, emit) => event.map<Future<void>>(
        //create: (event) => _create(event, emit),
        read: (event) => _read(event, emit),
        update: (event) => _update(event, emit),
        //delete: (event) => _delete(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IMainScreenRepository _repository;

  /// Create event handler
  // Future<void> _create(CreateMainScreenEvent event, Emitter<MainScreenState> emit) async {
  //   try {
  //     emit(MainScreenState.processing(data: state.data));
  //     //final newData = await _repository.();
  //     emit(MainScreenState.successful(data: newData));
  //   } on Object catch (err, stackTrace) {
  //     l.e('В MainScreenBLoC произошла ошибка: $err', stackTrace);
  //     emit(MainScreenState.error(data: state.data));
  //     rethrow;
  //   } finally {
  //     emit(MainScreenState.idle(data: state.data));
  //   }
  // }

  /// Read event handler
  Future<void> _read(
      ReadMainScreenEvent event, Emitter<MainScreenState> emit) async {
    try {
      emit(MainScreenState.processing(data: state.data));
      final newData = await _repository.readSavedPosts(event.storageKey);
      emit(MainScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      print('В MainScreenBLoC произошла ошибка: $err $stackTrace');
      emit(MainScreenState.error(data: state.data));
      rethrow;
    }
  }

  /// Update event handler
  Future<void> _update(
      UpdateMainScreenEvent event, Emitter<MainScreenState> emit) async {
    try {
      emit(MainScreenState.processing(data: state.data));
      final newData = await _repository.updatePostsFromNet(event.newsQuery);
      emit(MainScreenState.successful(data: newData));
    } on Object catch (err, stackTrace) {
      print('В MainScreenBLoC произошла ошибка: $err $stackTrace');
      emit(MainScreenState.error(data: state.data));
      rethrow;
    }
  }

  /// Delete event handler
  // Future<void> _delete(DeleteMainScreenEvent event, Emitter<MainScreenState> emit) async {
  //   try {
  //     emit(MainScreenState.processing(data: state.data));
  //     //final newData = await _repository.();
  //     emit(MainScreenState.successful(data: newData));
  //   } on Object catch (err, stackTrace) {
  //     l.e('В MainScreenBLoC произошла ошибка: $err', stackTrace);
  //     emit(MainScreenState.error(data: state.data));
  //     rethrow;
  //   } finally {
  //     emit(MainScreenState.idle(data: state.data));
  //   }
  // }
}

// class MainScreenEntity {
//   final List<Post> posts;
//   final HistoryDataProvider history;
//   final bool loadingInProgress;
//   final String newsQuery;

//   MainScreenEntity(
//       {this.posts = const <Post>[],
//       this.history = const HistoryDataProvider(),
//       this.loadingInProgress = true,
//       this.newsQuery = ''});
// }
