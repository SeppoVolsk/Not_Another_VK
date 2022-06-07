import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_repository.dart';
import 'package:vk_postman/presentation/blocs/auth/authenticationentity.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'auth_bloc.freezed.dart';

/* Authentication Events */

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  const factory AuthenticationEvent.logIn(NavigationRequest navigation) =
      LogInAuthenticationEvent;

  const factory AuthenticationEvent.logOut() = LogOutAuthenticationEvent;

  const factory AuthenticationEvent.checkAuth() = CheckAuthAuthenticationEvent;
}

/* Authentication States */

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  /// Is in idle state
  // bool get idling => !isProcessing;

  /// Is in progress state
  // bool get isProcessing => maybeMap<bool>(
  //       orElse: () => true,
  //       inProgress: (_) => false,
  //     );

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Idling state
  const factory AuthenticationState.authenticated({
    required final AuthenticationEntity data,
    @Default('AUTH') final String message,
  }) = AuthenticatedState;

  /// Processing
  const factory AuthenticationState.unknow({
    required final AuthenticationEntity data,
    @Default('IN PROGRESS') final String message,
  }) = InProgressAuthenticationState;

  /// Successful
  const factory AuthenticationState.notAuthenticated({
    required final AuthenticationEntity data,
    @Default('NOT AUTHENTICATED') final String message,
  }) = NotAuthenticatedState;

  /// An error has occurred
  const factory AuthenticationState.error({
    required final AuthenticationEntity data,
    @Default('An error has occurred') final String message,
  }) = ErrorAuthenticationState;
}

/// Buisiness Logic Component AuthenticationBLoC
class AuthenticationBLoC extends Bloc<AuthenticationEvent, AuthenticationState>
    implements EventSink<AuthenticationEvent> {
  AuthenticationBLoC({
    required final IAuthenticationRepository repository,
    final AuthenticationState? initialState,
  })  : _repository = repository,
        super(
          initialState ??
              AuthenticationState.unknow(
                data: AuthenticationEntity(),
                message: 'Initial idle state',
              ),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map<Future<void>>(
        logIn: (event) => _logIn(event, emit),
        logOut: (event) => _logOut(event, emit),
        checkAuth: (event) => _checkAuth(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IAuthenticationRepository _repository;

  /// LogIn event handler
  Future<void> _logIn(
      LogInAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      final newData = _repository.logInRepFunc(navigation: event.navigation);
      if (newData.accessToken != null) {
        VkApiClient().setAuthData(newData.accessToken, newData.userId);
        emit(AuthenticationState.authenticated(data: newData));
      } else {
        emit(AuthenticationState.notAuthenticated(data: state.data));
      }
    } on Object catch (err, stackTrace) {
      print('В AuthenticationBLoC произошла ошибка: $err, $stackTrace');
      emit(AuthenticationState.error(data: state.data));
      rethrow;
    } //finally {
    //   emit(AuthenticationState.authenticated(data: state.data));
    // }
  }

  /// LogOut event handler
  Future<void> _logOut(LogOutAuthenticationEvent event,
      Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.unknow(data: state.data));
      final newData = await _repository.logOutRepFunc();
      emit(AuthenticationState.notAuthenticated(data: newData));
    } on Object catch (err, stackTrace) {
      print('В AuthenticationBLoC произошла ошибка: $err, $stackTrace');
      emit(AuthenticationState.error(data: state.data));
      rethrow;
    } finally {
      emit(AuthenticationState.notAuthenticated(data: state.data));
    }
  }

  /// Check Auth event handler
  Future<void> _checkAuth(CheckAuthAuthenticationEvent event,
      Emitter<AuthenticationState> emit) async {
    try {
      final newData = await _repository.checkAuthRepFunc();
      newData.accessToken != null
          ? emit(AuthenticationState.authenticated(data: newData))
          : emit(AuthenticationState.notAuthenticated(data: state.data));
    } on Object catch (err, stackTrace) {
      print('В AuthenticationBLoC произошла ошибка: $err, $stackTrace');
      emit(AuthenticationState.error(data: state.data));
      rethrow;
    }
  }
}
