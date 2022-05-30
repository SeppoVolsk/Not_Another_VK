// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationRequest navigation) logIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthenticationEvent value) logIn,
    required TResult Function(LogOutAuthenticationEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$LogInAuthenticationEventCopyWith<$Res> {
  factory _$$LogInAuthenticationEventCopyWith(_$LogInAuthenticationEvent value,
          $Res Function(_$LogInAuthenticationEvent) then) =
      __$$LogInAuthenticationEventCopyWithImpl<$Res>;
  $Res call({NavigationRequest navigation});
}

/// @nodoc
class __$$LogInAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$LogInAuthenticationEventCopyWith<$Res> {
  __$$LogInAuthenticationEventCopyWithImpl(_$LogInAuthenticationEvent _value,
      $Res Function(_$LogInAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$LogInAuthenticationEvent));

  @override
  _$LogInAuthenticationEvent get _value =>
      super._value as _$LogInAuthenticationEvent;

  @override
  $Res call({
    Object? navigation = freezed,
  }) {
    return _then(_$LogInAuthenticationEvent(
      navigation == freezed
          ? _value.navigation
          : navigation // ignore: cast_nullable_to_non_nullable
              as NavigationRequest,
    ));
  }
}

/// @nodoc

class _$LogInAuthenticationEvent extends LogInAuthenticationEvent {
  const _$LogInAuthenticationEvent(this.navigation) : super._();

  @override
  final NavigationRequest navigation;

  @override
  String toString() {
    return 'AuthenticationEvent.logIn(navigation: $navigation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInAuthenticationEvent &&
            const DeepCollectionEquality()
                .equals(other.navigation, navigation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(navigation));

  @JsonKey(ignore: true)
  @override
  _$$LogInAuthenticationEventCopyWith<_$LogInAuthenticationEvent>
      get copyWith =>
          __$$LogInAuthenticationEventCopyWithImpl<_$LogInAuthenticationEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationRequest navigation) logIn,
    required TResult Function() logOut,
  }) {
    return logIn(navigation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
  }) {
    return logIn?.call(navigation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(navigation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthenticationEvent value) logIn,
    required TResult Function(LogOutAuthenticationEvent value) logOut,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class LogInAuthenticationEvent extends AuthenticationEvent {
  const factory LogInAuthenticationEvent(final NavigationRequest navigation) =
      _$LogInAuthenticationEvent;
  const LogInAuthenticationEvent._() : super._();

  NavigationRequest get navigation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LogInAuthenticationEventCopyWith<_$LogInAuthenticationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutAuthenticationEventCopyWith<$Res> {
  factory _$$LogOutAuthenticationEventCopyWith(
          _$LogOutAuthenticationEvent value,
          $Res Function(_$LogOutAuthenticationEvent) then) =
      __$$LogOutAuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutAuthenticationEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$LogOutAuthenticationEventCopyWith<$Res> {
  __$$LogOutAuthenticationEventCopyWithImpl(_$LogOutAuthenticationEvent _value,
      $Res Function(_$LogOutAuthenticationEvent) _then)
      : super(_value, (v) => _then(v as _$LogOutAuthenticationEvent));

  @override
  _$LogOutAuthenticationEvent get _value =>
      super._value as _$LogOutAuthenticationEvent;
}

/// @nodoc

class _$LogOutAuthenticationEvent extends LogOutAuthenticationEvent {
  const _$LogOutAuthenticationEvent() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutAuthenticationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationRequest navigation) logIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationRequest navigation)? logIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogInAuthenticationEvent value) logIn,
    required TResult Function(LogOutAuthenticationEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogInAuthenticationEvent value)? logIn,
    TResult Function(LogOutAuthenticationEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutAuthenticationEvent extends AuthenticationEvent {
  const factory LogOutAuthenticationEvent() = _$LogOutAuthenticationEvent;
  const LogOutAuthenticationEvent._() : super._();
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationEntity get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity data, String message)
        authenticated,
    required TResult Function(AuthenticationEntity data, String message)
        inProgress,
    required TResult Function(AuthenticationEntity data, String message)
        notAuthenticated,
    required TResult Function(AuthenticationEntity data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(NotAuthenticatedState value) notAuthenticated,
    required TResult Function(ErrorAuthenticationState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({AuthenticationEntity data, String message});

  $AuthenticationEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthenticationEntityCopyWith<$Res> get data {
    return $AuthenticationEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$AuthenticatedStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticatedStateCopyWith(_$AuthenticatedState value,
          $Res Function(_$AuthenticatedState) then) =
      __$$AuthenticatedStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationEntity data, String message});

  @override
  $AuthenticationEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$AuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$AuthenticatedStateCopyWith<$Res> {
  __$$AuthenticatedStateCopyWithImpl(
      _$AuthenticatedState _value, $Res Function(_$AuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$AuthenticatedState));

  @override
  _$AuthenticatedState get _value => super._value as _$AuthenticatedState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AuthenticatedState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticatedState extends AuthenticatedState {
  const _$AuthenticatedState({required this.data, this.message = 'AUTH'})
      : super._();

  @override
  final AuthenticationEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      __$$AuthenticatedStateCopyWithImpl<_$AuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity data, String message)
        authenticated,
    required TResult Function(AuthenticationEntity data, String message)
        inProgress,
    required TResult Function(AuthenticationEntity data, String message)
        notAuthenticated,
    required TResult Function(AuthenticationEntity data, String message) error,
  }) {
    return authenticated(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
  }) {
    return authenticated?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(NotAuthenticatedState value) notAuthenticated,
    required TResult Function(ErrorAuthenticationState value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedState extends AuthenticationState {
  const factory AuthenticatedState(
      {required final AuthenticationEntity data,
      final String message}) = _$AuthenticatedState;
  const AuthenticatedState._() : super._();

  @override
  AuthenticationEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedStateCopyWith<_$AuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$InProgressAuthenticationStateCopyWith(
          _$InProgressAuthenticationState value,
          $Res Function(_$InProgressAuthenticationState) then) =
      __$$InProgressAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationEntity data, String message});

  @override
  $AuthenticationEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$InProgressAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$InProgressAuthenticationStateCopyWith<$Res> {
  __$$InProgressAuthenticationStateCopyWithImpl(
      _$InProgressAuthenticationState _value,
      $Res Function(_$InProgressAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$InProgressAuthenticationState));

  @override
  _$InProgressAuthenticationState get _value =>
      super._value as _$InProgressAuthenticationState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$InProgressAuthenticationState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InProgressAuthenticationState extends InProgressAuthenticationState {
  const _$InProgressAuthenticationState(
      {required this.data, this.message = 'IN PROGRESS'})
      : super._();

  @override
  final AuthenticationEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.inProgress(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressAuthenticationState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$InProgressAuthenticationStateCopyWith<_$InProgressAuthenticationState>
      get copyWith => __$$InProgressAuthenticationStateCopyWithImpl<
          _$InProgressAuthenticationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity data, String message)
        authenticated,
    required TResult Function(AuthenticationEntity data, String message)
        inProgress,
    required TResult Function(AuthenticationEntity data, String message)
        notAuthenticated,
    required TResult Function(AuthenticationEntity data, String message) error,
  }) {
    return inProgress(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
  }) {
    return inProgress?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(NotAuthenticatedState value) notAuthenticated,
    required TResult Function(ErrorAuthenticationState value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgressAuthenticationState extends AuthenticationState {
  const factory InProgressAuthenticationState(
      {required final AuthenticationEntity data,
      final String message}) = _$InProgressAuthenticationState;
  const InProgressAuthenticationState._() : super._();

  @override
  AuthenticationEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InProgressAuthenticationStateCopyWith<_$InProgressAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAuthenticatedStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$NotAuthenticatedStateCopyWith(_$NotAuthenticatedState value,
          $Res Function(_$NotAuthenticatedState) then) =
      __$$NotAuthenticatedStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationEntity data, String message});

  @override
  $AuthenticationEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$NotAuthenticatedStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$NotAuthenticatedStateCopyWith<$Res> {
  __$$NotAuthenticatedStateCopyWithImpl(_$NotAuthenticatedState _value,
      $Res Function(_$NotAuthenticatedState) _then)
      : super(_value, (v) => _then(v as _$NotAuthenticatedState));

  @override
  _$NotAuthenticatedState get _value => super._value as _$NotAuthenticatedState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$NotAuthenticatedState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAuthenticatedState extends NotAuthenticatedState {
  const _$NotAuthenticatedState(
      {required this.data, this.message = 'NOT AUTHENTICATED'})
      : super._();

  @override
  final AuthenticationEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.notAuthenticated(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthenticatedState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NotAuthenticatedStateCopyWith<_$NotAuthenticatedState> get copyWith =>
      __$$NotAuthenticatedStateCopyWithImpl<_$NotAuthenticatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity data, String message)
        authenticated,
    required TResult Function(AuthenticationEntity data, String message)
        inProgress,
    required TResult Function(AuthenticationEntity data, String message)
        notAuthenticated,
    required TResult Function(AuthenticationEntity data, String message) error,
  }) {
    return notAuthenticated(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
  }) {
    return notAuthenticated?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(NotAuthenticatedState value) notAuthenticated,
    required TResult Function(ErrorAuthenticationState value) error,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticatedState extends AuthenticationState {
  const factory NotAuthenticatedState(
      {required final AuthenticationEntity data,
      final String message}) = _$NotAuthenticatedState;
  const NotAuthenticatedState._() : super._();

  @override
  AuthenticationEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$NotAuthenticatedStateCopyWith<_$NotAuthenticatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$ErrorAuthenticationStateCopyWith(_$ErrorAuthenticationState value,
          $Res Function(_$ErrorAuthenticationState) then) =
      __$$ErrorAuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationEntity data, String message});

  @override
  $AuthenticationEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorAuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$ErrorAuthenticationStateCopyWith<$Res> {
  __$$ErrorAuthenticationStateCopyWithImpl(_$ErrorAuthenticationState _value,
      $Res Function(_$ErrorAuthenticationState) _then)
      : super(_value, (v) => _then(v as _$ErrorAuthenticationState));

  @override
  _$ErrorAuthenticationState get _value =>
      super._value as _$ErrorAuthenticationState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorAuthenticationState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAuthenticationState extends ErrorAuthenticationState {
  const _$ErrorAuthenticationState(
      {required this.data, this.message = 'An error has occurred'})
      : super._();

  @override
  final AuthenticationEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthenticationState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorAuthenticationStateCopyWith<_$ErrorAuthenticationState>
      get copyWith =>
          __$$ErrorAuthenticationStateCopyWithImpl<_$ErrorAuthenticationState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity data, String message)
        authenticated,
    required TResult Function(AuthenticationEntity data, String message)
        inProgress,
    required TResult Function(AuthenticationEntity data, String message)
        notAuthenticated,
    required TResult Function(AuthenticationEntity data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity data, String message)? authenticated,
    TResult Function(AuthenticationEntity data, String message)? inProgress,
    TResult Function(AuthenticationEntity data, String message)?
        notAuthenticated,
    TResult Function(AuthenticationEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticatedState value) authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(NotAuthenticatedState value) notAuthenticated,
    required TResult Function(ErrorAuthenticationState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticatedState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(NotAuthenticatedState value)? notAuthenticated,
    TResult Function(ErrorAuthenticationState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuthenticationState extends AuthenticationState {
  const factory ErrorAuthenticationState(
      {required final AuthenticationEntity data,
      final String message}) = _$ErrorAuthenticationState;
  const ErrorAuthenticationState._() : super._();

  @override
  AuthenticationEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAuthenticationStateCopyWith<_$ErrorAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}
