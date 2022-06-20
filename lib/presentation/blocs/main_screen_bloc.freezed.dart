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
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? query)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMainScreenEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadMainScreenEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMainScreenEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenEventCopyWith<MainScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res>;
  $Res call({String? query});
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

  final MainScreenEvent _value;
  // ignore: unused_field
  final $Res Function(MainScreenEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$LoadMainScreenEventCopyWith<$Res>
    implements $MainScreenEventCopyWith<$Res> {
  factory _$$LoadMainScreenEventCopyWith(_$LoadMainScreenEvent value,
          $Res Function(_$LoadMainScreenEvent) then) =
      __$$LoadMainScreenEventCopyWithImpl<$Res>;
  @override
  $Res call({String? query});
}

/// @nodoc
class __$$LoadMainScreenEventCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res>
    implements _$$LoadMainScreenEventCopyWith<$Res> {
  __$$LoadMainScreenEventCopyWithImpl(
      _$LoadMainScreenEvent _value, $Res Function(_$LoadMainScreenEvent) _then)
      : super(_value, (v) => _then(v as _$LoadMainScreenEvent));

  @override
  _$LoadMainScreenEvent get _value => super._value as _$LoadMainScreenEvent;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$LoadMainScreenEvent(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadMainScreenEvent extends LoadMainScreenEvent {
  const _$LoadMainScreenEvent([this.query]) : super._();

  @override
  final String? query;

  @override
  String toString() {
    return 'MainScreenEvent.load(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMainScreenEvent &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$LoadMainScreenEventCopyWith<_$LoadMainScreenEvent> get copyWith =>
      __$$LoadMainScreenEventCopyWithImpl<_$LoadMainScreenEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) load,
  }) {
    return load(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? query)? load,
  }) {
    return load?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadMainScreenEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadMainScreenEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadMainScreenEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadMainScreenEvent extends MainScreenEvent {
  const factory LoadMainScreenEvent([final String? query]) =
      _$LoadMainScreenEvent;
  const LoadMainScreenEvent._() : super._();

  @override
  String? get query => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LoadMainScreenEventCopyWith<_$LoadMainScreenEvent> get copyWith =>
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
