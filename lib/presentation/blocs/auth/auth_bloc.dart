import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_repository.dart';
import 'package:vk_postman/presentation/blocs/auth/authenticationentity.dart';

part 'auth_bloc.freezed.dart';

/* Authentication Events */

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  const factory AuthenticationEvent.logIn() = LogInAuthenticationEvent;

  const factory AuthenticationEvent.logOut() = LogOutAuthenticationEvent;
}

/* Authentication States */

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  /// Is in idle state
  bool get idling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(
        orElse: () => true,
        inProgress: (_) => false,
      );

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Idling state
  const factory AuthenticationState.authenticated({
    required final AuthenticationEntity data,
    @Default('AUTH') final String message,
  }) = AuthenticatedState;

  /// Processing
  const factory AuthenticationState.inProgress({
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
              AuthenticationState.notAuthenticated(
                data: AuthenticationEntity(),
                message: 'Initial idle state',
              ),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map<Future<void>>(
        logIn: (event) => _logIn(event, emit),
        logOut: (event) => _logOut(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
      //transformer: bloc_concurrency.restartable(),
      //transformer: bloc_concurrency.droppable(),
      //transformer: bloc_concurrency.concurrent(),
    );
  }

  final IAuthenticationRepository _repository;

  /// Create event handler
  Future<void> _logIn(
      LogInAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(data: state.data));
      final newData = _repository.logInRepFunc();
      emit(AuthenticationState.authenticated(data: newData));
    } on Object catch (err, stackTrace) {
      print('В AuthenticationBLoC произошла ошибка: $err, $stackTrace');
      emit(AuthenticationState.error(data: state.data));
      rethrow;
    } finally {
      emit(AuthenticationState.authenticated(data: state.data));
    }
  }

  /// Read event handler
  Future<void> _logOut(LogOutAuthenticationEvent event,
      Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(data: state.data));
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
}
