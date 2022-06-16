// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(String? storageKey) read,
    required TResult Function(String newsQuery) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMainScreenEvent value) check,
    required TResult Function(ReadMainScreenEvent value) read,
    required TResult Function(UpdateMainScreenEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

  final MainScreenEvent _value;
  // ignore: unused_field
  final $Res Function(MainScreenEvent) _then;
}

/// @nodoc
abstract class _$$CheckMainScreenEventCopyWith<$Res> {
  factory _$$CheckMainScreenEventCopyWith(_$CheckMainScreenEvent value,
          $Res Function(_$CheckMainScreenEvent) then) =
      __$$CheckMainScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckMainScreenEventCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$CheckMainScreenEventCopyWith<$Res> {
  __$$CheckMainScreenEventCopyWithImpl(_$CheckMainScreenEvent _value,
      $Res Function(_$CheckMainScreenEvent) _then)
      : super(_value, (v) => _then(v as _$CheckMainScreenEvent));

  @override
  _$CheckMainScreenEvent get _value => super._value as _$CheckMainScreenEvent;
}

/// @nodoc

class _$CheckMainScreenEvent extends CheckMainScreenEvent {
  const _$CheckMainScreenEvent() : super._();

  @override
  String toString() {
    return 'MainScreenEvent.check()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckMainScreenEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(String? storageKey) read,
    required TResult Function(String newsQuery) update,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMainScreenEvent value) check,
    required TResult Function(ReadMainScreenEvent value) read,
    required TResult Function(UpdateMainScreenEvent value) update,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class CheckMainScreenEvent extends MainScreenEvent {
  const factory CheckMainScreenEvent() = _$CheckMainScreenEvent;
  const CheckMainScreenEvent._() : super._();
}

/// @nodoc
abstract class _$$ReadMainScreenEventCopyWith<$Res> {
  factory _$$ReadMainScreenEventCopyWith(_$ReadMainScreenEvent value,
          $Res Function(_$ReadMainScreenEvent) then) =
      __$$ReadMainScreenEventCopyWithImpl<$Res>;
  $Res call({String? storageKey});
}

/// @nodoc
class __$$ReadMainScreenEventCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$ReadMainScreenEventCopyWith<$Res> {
  __$$ReadMainScreenEventCopyWithImpl(
      _$ReadMainScreenEvent _value, $Res Function(_$ReadMainScreenEvent) _then)
      : super(_value, (v) => _then(v as _$ReadMainScreenEvent));

  @override
  _$ReadMainScreenEvent get _value => super._value as _$ReadMainScreenEvent;

  @override
  $Res call({
    Object? storageKey = freezed,
  }) {
    return _then(_$ReadMainScreenEvent(
      storageKey == freezed
          ? _value.storageKey
          : storageKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReadMainScreenEvent extends ReadMainScreenEvent {
  const _$ReadMainScreenEvent(this.storageKey) : super._();

  @override
  final String? storageKey;

  @override
  String toString() {
    return 'MainScreenEvent.read(storageKey: $storageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMainScreenEvent &&
            const DeepCollectionEquality()
                .equals(other.storageKey, storageKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(storageKey));

  @JsonKey(ignore: true)
  @override
  _$$ReadMainScreenEventCopyWith<_$ReadMainScreenEvent> get copyWith =>
      __$$ReadMainScreenEventCopyWithImpl<_$ReadMainScreenEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(String? storageKey) read,
    required TResult Function(String newsQuery) update,
  }) {
    return read(storageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
  }) {
    return read?.call(storageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(storageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMainScreenEvent value) check,
    required TResult Function(ReadMainScreenEvent value) read,
    required TResult Function(UpdateMainScreenEvent value) update,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadMainScreenEvent extends MainScreenEvent {
  const factory ReadMainScreenEvent(final String? storageKey) =
      _$ReadMainScreenEvent;
  const ReadMainScreenEvent._() : super._();

  String? get storageKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ReadMainScreenEventCopyWith<_$ReadMainScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMainScreenEventCopyWith<$Res> {
  factory _$$UpdateMainScreenEventCopyWith(_$UpdateMainScreenEvent value,
          $Res Function(_$UpdateMainScreenEvent) then) =
      __$$UpdateMainScreenEventCopyWithImpl<$Res>;
  $Res call({String newsQuery});
}

/// @nodoc
class __$$UpdateMainScreenEventCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$UpdateMainScreenEventCopyWith<$Res> {
  __$$UpdateMainScreenEventCopyWithImpl(_$UpdateMainScreenEvent _value,
      $Res Function(_$UpdateMainScreenEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateMainScreenEvent));

  @override
  _$UpdateMainScreenEvent get _value => super._value as _$UpdateMainScreenEvent;

  @override
  $Res call({
    Object? newsQuery = freezed,
  }) {
    return _then(_$UpdateMainScreenEvent(
      newsQuery == freezed
          ? _value.newsQuery
          : newsQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateMainScreenEvent extends UpdateMainScreenEvent {
  const _$UpdateMainScreenEvent(this.newsQuery) : super._();

  @override
  final String newsQuery;

  @override
  String toString() {
    return 'MainScreenEvent.update(newsQuery: $newsQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMainScreenEvent &&
            const DeepCollectionEquality().equals(other.newsQuery, newsQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newsQuery));

  @JsonKey(ignore: true)
  @override
  _$$UpdateMainScreenEventCopyWith<_$UpdateMainScreenEvent> get copyWith =>
      __$$UpdateMainScreenEventCopyWithImpl<_$UpdateMainScreenEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
    required TResult Function(String? storageKey) read,
    required TResult Function(String newsQuery) update,
  }) {
    return update(newsQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
  }) {
    return update?.call(newsQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    TResult Function(String? storageKey)? read,
    TResult Function(String newsQuery)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(newsQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMainScreenEvent value) check,
    required TResult Function(ReadMainScreenEvent value) read,
    required TResult Function(UpdateMainScreenEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMainScreenEvent value)? check,
    TResult Function(ReadMainScreenEvent value)? read,
    TResult Function(UpdateMainScreenEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateMainScreenEvent extends MainScreenEvent {
  const factory UpdateMainScreenEvent(final String newsQuery) =
      _$UpdateMainScreenEvent;
  const UpdateMainScreenEvent._() : super._();

  String get newsQuery => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UpdateMainScreenEventCopyWith<_$UpdateMainScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainScreenState {
  MainScreenEntity get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreenEntity data, String message) idle,
    required TResult Function(MainScreenEntity data, String message) processing,
    required TResult Function(MainScreenEntity data, String message) successful,
    required TResult Function(MainScreenEntity data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMainScreenState value) idle,
    required TResult Function(ProcessingMainScreenState value) processing,
    required TResult Function(SuccessfulMainScreenState value) successful,
    required TResult Function(ErrorMainScreenState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res>;
  $Res call({MainScreenEntity data, String message});

  $MainScreenEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  final MainScreenState _value;
  // ignore: unused_field
  final $Res Function(MainScreenState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $MainScreenEntityCopyWith<$Res> get data {
    return $MainScreenEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$IdleMainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$IdleMainScreenStateCopyWith(_$IdleMainScreenState value,
          $Res Function(_$IdleMainScreenState) then) =
      __$$IdleMainScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({MainScreenEntity data, String message});

  @override
  $MainScreenEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$IdleMainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$$IdleMainScreenStateCopyWith<$Res> {
  __$$IdleMainScreenStateCopyWithImpl(
      _$IdleMainScreenState _value, $Res Function(_$IdleMainScreenState) _then)
      : super(_value, (v) => _then(v as _$IdleMainScreenState));

  @override
  _$IdleMainScreenState get _value => super._value as _$IdleMainScreenState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$IdleMainScreenState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdleMainScreenState extends IdleMainScreenState {
  const _$IdleMainScreenState({required this.data, this.message = 'Idle'})
      : super._();

  @override
  final MainScreenEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenState.idle(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleMainScreenState &&
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
  _$$IdleMainScreenStateCopyWith<_$IdleMainScreenState> get copyWith =>
      __$$IdleMainScreenStateCopyWithImpl<_$IdleMainScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreenEntity data, String message) idle,
    required TResult Function(MainScreenEntity data, String message) processing,
    required TResult Function(MainScreenEntity data, String message) successful,
    required TResult Function(MainScreenEntity data, String message) error,
  }) {
    return idle(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
  }) {
    return idle?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMainScreenState value) idle,
    required TResult Function(ProcessingMainScreenState value) processing,
    required TResult Function(SuccessfulMainScreenState value) successful,
    required TResult Function(ErrorMainScreenState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMainScreenState extends MainScreenState {
  const factory IdleMainScreenState(
      {required final MainScreenEntity data,
      final String message}) = _$IdleMainScreenState;
  const IdleMainScreenState._() : super._();

  @override
  MainScreenEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IdleMainScreenStateCopyWith<_$IdleMainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessingMainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$ProcessingMainScreenStateCopyWith(
          _$ProcessingMainScreenState value,
          $Res Function(_$ProcessingMainScreenState) then) =
      __$$ProcessingMainScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({MainScreenEntity data, String message});

  @override
  $MainScreenEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProcessingMainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$$ProcessingMainScreenStateCopyWith<$Res> {
  __$$ProcessingMainScreenStateCopyWithImpl(_$ProcessingMainScreenState _value,
      $Res Function(_$ProcessingMainScreenState) _then)
      : super(_value, (v) => _then(v as _$ProcessingMainScreenState));

  @override
  _$ProcessingMainScreenState get _value =>
      super._value as _$ProcessingMainScreenState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProcessingMainScreenState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessingMainScreenState extends ProcessingMainScreenState {
  const _$ProcessingMainScreenState(
      {required this.data, this.message = 'Processing'})
      : super._();

  @override
  final MainScreenEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenState.processing(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessingMainScreenState &&
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
  _$$ProcessingMainScreenStateCopyWith<_$ProcessingMainScreenState>
      get copyWith => __$$ProcessingMainScreenStateCopyWithImpl<
          _$ProcessingMainScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreenEntity data, String message) idle,
    required TResult Function(MainScreenEntity data, String message) processing,
    required TResult Function(MainScreenEntity data, String message) successful,
    required TResult Function(MainScreenEntity data, String message) error,
  }) {
    return processing(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
  }) {
    return processing?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMainScreenState value) idle,
    required TResult Function(ProcessingMainScreenState value) processing,
    required TResult Function(SuccessfulMainScreenState value) successful,
    required TResult Function(ErrorMainScreenState value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class ProcessingMainScreenState extends MainScreenState {
  const factory ProcessingMainScreenState(
      {required final MainScreenEntity data,
      final String message}) = _$ProcessingMainScreenState;
  const ProcessingMainScreenState._() : super._();

  @override
  MainScreenEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ProcessingMainScreenStateCopyWith<_$ProcessingMainScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessfulMainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$SuccessfulMainScreenStateCopyWith(
          _$SuccessfulMainScreenState value,
          $Res Function(_$SuccessfulMainScreenState) then) =
      __$$SuccessfulMainScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({MainScreenEntity data, String message});

  @override
  $MainScreenEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$SuccessfulMainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$$SuccessfulMainScreenStateCopyWith<$Res> {
  __$$SuccessfulMainScreenStateCopyWithImpl(_$SuccessfulMainScreenState _value,
      $Res Function(_$SuccessfulMainScreenState) _then)
      : super(_value, (v) => _then(v as _$SuccessfulMainScreenState));

  @override
  _$SuccessfulMainScreenState get _value =>
      super._value as _$SuccessfulMainScreenState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SuccessfulMainScreenState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessfulMainScreenState extends SuccessfulMainScreenState {
  const _$SuccessfulMainScreenState(
      {required this.data, this.message = 'Successful'})
      : super._();

  @override
  final MainScreenEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenState.successful(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessfulMainScreenState &&
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
  _$$SuccessfulMainScreenStateCopyWith<_$SuccessfulMainScreenState>
      get copyWith => __$$SuccessfulMainScreenStateCopyWithImpl<
          _$SuccessfulMainScreenState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreenEntity data, String message) idle,
    required TResult Function(MainScreenEntity data, String message) processing,
    required TResult Function(MainScreenEntity data, String message) successful,
    required TResult Function(MainScreenEntity data, String message) error,
  }) {
    return successful(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
  }) {
    return successful?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleMainScreenState value) idle,
    required TResult Function(ProcessingMainScreenState value) processing,
    required TResult Function(SuccessfulMainScreenState value) successful,
    required TResult Function(ErrorMainScreenState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SuccessfulMainScreenState extends MainScreenState {
  const factory SuccessfulMainScreenState(
      {required final MainScreenEntity data,
      final String message}) = _$SuccessfulMainScreenState;
  const SuccessfulMainScreenState._() : super._();

  @override
  MainScreenEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$SuccessfulMainScreenStateCopyWith<_$SuccessfulMainScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMainScreenStateCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$ErrorMainScreenStateCopyWith(_$ErrorMainScreenState value,
          $Res Function(_$ErrorMainScreenState) then) =
      __$$ErrorMainScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({MainScreenEntity data, String message});

  @override
  $MainScreenEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorMainScreenStateCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res>
    implements _$$ErrorMainScreenStateCopyWith<$Res> {
  __$$ErrorMainScreenStateCopyWithImpl(_$ErrorMainScreenState _value,
      $Res Function(_$ErrorMainScreenState) _then)
      : super(_value, (v) => _then(v as _$ErrorMainScreenState));

  @override
  _$ErrorMainScreenState get _value => super._value as _$ErrorMainScreenState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorMainScreenState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainScreenEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMainScreenState extends ErrorMainScreenState {
  const _$ErrorMainScreenState({required this.data, this.message = 'Error'})
      : super._();

  @override
  final MainScreenEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MainScreenState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMainScreenState &&
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
  _$$ErrorMainScreenStateCopyWith<_$ErrorMainScreenState> get copyWith =>
      __$$ErrorMainScreenStateCopyWithImpl<_$ErrorMainScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreenEntity data, String message) idle,
    required TResult Function(MainScreenEntity data, String message) processing,
    required TResult Function(MainScreenEntity data, String message) successful,
    required TResult Function(MainScreenEntity data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreenEntity data, String message)? idle,
    TResult Function(MainScreenEntity data, String message)? processing,
    TResult Function(MainScreenEntity data, String message)? successful,
    TResult Function(MainScreenEntity data, String message)? error,
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
    required TResult Function(IdleMainScreenState value) idle,
    required TResult Function(ProcessingMainScreenState value) processing,
    required TResult Function(SuccessfulMainScreenState value) successful,
    required TResult Function(ErrorMainScreenState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleMainScreenState value)? idle,
    TResult Function(ProcessingMainScreenState value)? processing,
    TResult Function(SuccessfulMainScreenState value)? successful,
    TResult Function(ErrorMainScreenState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMainScreenState extends MainScreenState {
  const factory ErrorMainScreenState(
      {required final MainScreenEntity data,
      final String message}) = _$ErrorMainScreenState;
  const ErrorMainScreenState._() : super._();

  @override
  MainScreenEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMainScreenStateCopyWith<_$ErrorMainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
