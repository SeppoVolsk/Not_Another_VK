// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAppThemeEvent value) read,
    required TResult Function(ChangeAppThemeEvent value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeEventCopyWith<$Res> {
  factory $AppThemeEventCopyWith(
          AppThemeEvent value, $Res Function(AppThemeEvent) then) =
      _$AppThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeEventCopyWithImpl<$Res>
    implements $AppThemeEventCopyWith<$Res> {
  _$AppThemeEventCopyWithImpl(this._value, this._then);

  final AppThemeEvent _value;
  // ignore: unused_field
  final $Res Function(AppThemeEvent) _then;
}

/// @nodoc
abstract class _$$ReadAppThemeEventCopyWith<$Res> {
  factory _$$ReadAppThemeEventCopyWith(
          _$ReadAppThemeEvent value, $Res Function(_$ReadAppThemeEvent) then) =
      __$$ReadAppThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadAppThemeEventCopyWithImpl<$Res>
    extends _$AppThemeEventCopyWithImpl<$Res>
    implements _$$ReadAppThemeEventCopyWith<$Res> {
  __$$ReadAppThemeEventCopyWithImpl(
      _$ReadAppThemeEvent _value, $Res Function(_$ReadAppThemeEvent) _then)
      : super(_value, (v) => _then(v as _$ReadAppThemeEvent));

  @override
  _$ReadAppThemeEvent get _value => super._value as _$ReadAppThemeEvent;
}

/// @nodoc

class _$ReadAppThemeEvent extends ReadAppThemeEvent {
  const _$ReadAppThemeEvent() : super._();

  @override
  String toString() {
    return 'AppThemeEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadAppThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() change,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAppThemeEvent value) read,
    required TResult Function(ChangeAppThemeEvent value) change,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadAppThemeEvent extends AppThemeEvent {
  const factory ReadAppThemeEvent() = _$ReadAppThemeEvent;
  const ReadAppThemeEvent._() : super._();
}

/// @nodoc
abstract class _$$ChangeAppThemeEventCopyWith<$Res> {
  factory _$$ChangeAppThemeEventCopyWith(_$ChangeAppThemeEvent value,
          $Res Function(_$ChangeAppThemeEvent) then) =
      __$$ChangeAppThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeAppThemeEventCopyWithImpl<$Res>
    extends _$AppThemeEventCopyWithImpl<$Res>
    implements _$$ChangeAppThemeEventCopyWith<$Res> {
  __$$ChangeAppThemeEventCopyWithImpl(
      _$ChangeAppThemeEvent _value, $Res Function(_$ChangeAppThemeEvent) _then)
      : super(_value, (v) => _then(v as _$ChangeAppThemeEvent));

  @override
  _$ChangeAppThemeEvent get _value => super._value as _$ChangeAppThemeEvent;
}

/// @nodoc

class _$ChangeAppThemeEvent extends ChangeAppThemeEvent {
  const _$ChangeAppThemeEvent() : super._();

  @override
  String toString() {
    return 'AppThemeEvent.change()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeAppThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
    required TResult Function() change,
  }) {
    return change();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
  }) {
    return change?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadAppThemeEvent value) read,
    required TResult Function(ChangeAppThemeEvent value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadAppThemeEvent value)? read,
    TResult Function(ChangeAppThemeEvent value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class ChangeAppThemeEvent extends AppThemeEvent {
  const factory ChangeAppThemeEvent() = _$ChangeAppThemeEvent;
  const ChangeAppThemeEvent._() : super._();
}

/// @nodoc
mixin _$AppThemeState {
  AppThemeEntity get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeEntity data, String message) unknow,
    required TResult Function(AppThemeEntity data, String message) light,
    required TResult Function(AppThemeEntity data, String message) dark,
    required TResult Function(AppThemeEntity data, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowAppThemeState value) unknow,
    required TResult Function(LightAppThemeState value) light,
    required TResult Function(DarkAppThemeState value) dark,
    required TResult Function(ErrorAppThemeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeStateCopyWith<AppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeStateCopyWith<$Res> {
  factory $AppThemeStateCopyWith(
          AppThemeState value, $Res Function(AppThemeState) then) =
      _$AppThemeStateCopyWithImpl<$Res>;
  $Res call({AppThemeEntity data, String message});

  $AppThemeEntityCopyWith<$Res> get data;
}

/// @nodoc
class _$AppThemeStateCopyWithImpl<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  _$AppThemeStateCopyWithImpl(this._value, this._then);

  final AppThemeState _value;
  // ignore: unused_field
  final $Res Function(AppThemeState) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppThemeEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AppThemeEntityCopyWith<$Res> get data {
    return $AppThemeEntityCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$UnknowAppThemeStateCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$UnknowAppThemeStateCopyWith(_$UnknowAppThemeState value,
          $Res Function(_$UnknowAppThemeState) then) =
      __$$UnknowAppThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppThemeEntity data, String message});

  @override
  $AppThemeEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$UnknowAppThemeStateCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$UnknowAppThemeStateCopyWith<$Res> {
  __$$UnknowAppThemeStateCopyWithImpl(
      _$UnknowAppThemeState _value, $Res Function(_$UnknowAppThemeState) _then)
      : super(_value, (v) => _then(v as _$UnknowAppThemeState));

  @override
  _$UnknowAppThemeState get _value => super._value as _$UnknowAppThemeState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UnknowAppThemeState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppThemeEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknowAppThemeState extends UnknowAppThemeState {
  const _$UnknowAppThemeState(
      {required this.data, this.message = 'Unknow theme'})
      : super._();

  @override
  final AppThemeEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppThemeState.unknow(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknowAppThemeState &&
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
  _$$UnknowAppThemeStateCopyWith<_$UnknowAppThemeState> get copyWith =>
      __$$UnknowAppThemeStateCopyWithImpl<_$UnknowAppThemeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeEntity data, String message) unknow,
    required TResult Function(AppThemeEntity data, String message) light,
    required TResult Function(AppThemeEntity data, String message) dark,
    required TResult Function(AppThemeEntity data, String message) error,
  }) {
    return unknow(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
  }) {
    return unknow?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowAppThemeState value) unknow,
    required TResult Function(LightAppThemeState value) light,
    required TResult Function(DarkAppThemeState value) dark,
    required TResult Function(ErrorAppThemeState value) error,
  }) {
    return unknow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
  }) {
    return unknow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
    required TResult orElse(),
  }) {
    if (unknow != null) {
      return unknow(this);
    }
    return orElse();
  }
}

abstract class UnknowAppThemeState extends AppThemeState {
  const factory UnknowAppThemeState(
      {required final AppThemeEntity data,
      final String message}) = _$UnknowAppThemeState;
  const UnknowAppThemeState._() : super._();

  @override
  AppThemeEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnknowAppThemeStateCopyWith<_$UnknowAppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LightAppThemeStateCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$LightAppThemeStateCopyWith(_$LightAppThemeState value,
          $Res Function(_$LightAppThemeState) then) =
      __$$LightAppThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppThemeEntity data, String message});

  @override
  $AppThemeEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$LightAppThemeStateCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$LightAppThemeStateCopyWith<$Res> {
  __$$LightAppThemeStateCopyWithImpl(
      _$LightAppThemeState _value, $Res Function(_$LightAppThemeState) _then)
      : super(_value, (v) => _then(v as _$LightAppThemeState));

  @override
  _$LightAppThemeState get _value => super._value as _$LightAppThemeState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$LightAppThemeState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppThemeEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LightAppThemeState extends LightAppThemeState {
  const _$LightAppThemeState({required this.data, this.message = 'Lighr theme'})
      : super._();

  @override
  final AppThemeEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppThemeState.light(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LightAppThemeState &&
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
  _$$LightAppThemeStateCopyWith<_$LightAppThemeState> get copyWith =>
      __$$LightAppThemeStateCopyWithImpl<_$LightAppThemeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeEntity data, String message) unknow,
    required TResult Function(AppThemeEntity data, String message) light,
    required TResult Function(AppThemeEntity data, String message) dark,
    required TResult Function(AppThemeEntity data, String message) error,
  }) {
    return light(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
  }) {
    return light?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowAppThemeState value) unknow,
    required TResult Function(LightAppThemeState value) light,
    required TResult Function(DarkAppThemeState value) dark,
    required TResult Function(ErrorAppThemeState value) error,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class LightAppThemeState extends AppThemeState {
  const factory LightAppThemeState(
      {required final AppThemeEntity data,
      final String message}) = _$LightAppThemeState;
  const LightAppThemeState._() : super._();

  @override
  AppThemeEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$LightAppThemeStateCopyWith<_$LightAppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DarkAppThemeStateCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$DarkAppThemeStateCopyWith(
          _$DarkAppThemeState value, $Res Function(_$DarkAppThemeState) then) =
      __$$DarkAppThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppThemeEntity data, String message});

  @override
  $AppThemeEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$DarkAppThemeStateCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$DarkAppThemeStateCopyWith<$Res> {
  __$$DarkAppThemeStateCopyWithImpl(
      _$DarkAppThemeState _value, $Res Function(_$DarkAppThemeState) _then)
      : super(_value, (v) => _then(v as _$DarkAppThemeState));

  @override
  _$DarkAppThemeState get _value => super._value as _$DarkAppThemeState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DarkAppThemeState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppThemeEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DarkAppThemeState extends DarkAppThemeState {
  const _$DarkAppThemeState({required this.data, this.message = 'Dark theme'})
      : super._();

  @override
  final AppThemeEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppThemeState.dark(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DarkAppThemeState &&
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
  _$$DarkAppThemeStateCopyWith<_$DarkAppThemeState> get copyWith =>
      __$$DarkAppThemeStateCopyWithImpl<_$DarkAppThemeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeEntity data, String message) unknow,
    required TResult Function(AppThemeEntity data, String message) light,
    required TResult Function(AppThemeEntity data, String message) dark,
    required TResult Function(AppThemeEntity data, String message) error,
  }) {
    return dark(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
  }) {
    return dark?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(data, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnknowAppThemeState value) unknow,
    required TResult Function(LightAppThemeState value) light,
    required TResult Function(DarkAppThemeState value) dark,
    required TResult Function(ErrorAppThemeState value) error,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class DarkAppThemeState extends AppThemeState {
  const factory DarkAppThemeState(
      {required final AppThemeEntity data,
      final String message}) = _$DarkAppThemeState;
  const DarkAppThemeState._() : super._();

  @override
  AppThemeEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$DarkAppThemeStateCopyWith<_$DarkAppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAppThemeStateCopyWith<$Res>
    implements $AppThemeStateCopyWith<$Res> {
  factory _$$ErrorAppThemeStateCopyWith(_$ErrorAppThemeState value,
          $Res Function(_$ErrorAppThemeState) then) =
      __$$ErrorAppThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({AppThemeEntity data, String message});

  @override
  $AppThemeEntityCopyWith<$Res> get data;
}

/// @nodoc
class __$$ErrorAppThemeStateCopyWithImpl<$Res>
    extends _$AppThemeStateCopyWithImpl<$Res>
    implements _$$ErrorAppThemeStateCopyWith<$Res> {
  __$$ErrorAppThemeStateCopyWithImpl(
      _$ErrorAppThemeState _value, $Res Function(_$ErrorAppThemeState) _then)
      : super(_value, (v) => _then(v as _$ErrorAppThemeState));

  @override
  _$ErrorAppThemeState get _value => super._value as _$ErrorAppThemeState;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ErrorAppThemeState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppThemeEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAppThemeState extends ErrorAppThemeState {
  const _$ErrorAppThemeState(
      {required this.data, this.message = 'An error has occurred'})
      : super._();

  @override
  final AppThemeEntity data;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AppThemeState.error(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAppThemeState &&
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
  _$$ErrorAppThemeStateCopyWith<_$ErrorAppThemeState> get copyWith =>
      __$$ErrorAppThemeStateCopyWithImpl<_$ErrorAppThemeState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeEntity data, String message) unknow,
    required TResult Function(AppThemeEntity data, String message) light,
    required TResult Function(AppThemeEntity data, String message) dark,
    required TResult Function(AppThemeEntity data, String message) error,
  }) {
    return error(data, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
  }) {
    return error?.call(data, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeEntity data, String message)? unknow,
    TResult Function(AppThemeEntity data, String message)? light,
    TResult Function(AppThemeEntity data, String message)? dark,
    TResult Function(AppThemeEntity data, String message)? error,
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
    required TResult Function(UnknowAppThemeState value) unknow,
    required TResult Function(LightAppThemeState value) light,
    required TResult Function(DarkAppThemeState value) dark,
    required TResult Function(ErrorAppThemeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknowAppThemeState value)? unknow,
    TResult Function(LightAppThemeState value)? light,
    TResult Function(DarkAppThemeState value)? dark,
    TResult Function(ErrorAppThemeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAppThemeState extends AppThemeState {
  const factory ErrorAppThemeState(
      {required final AppThemeEntity data,
      final String message}) = _$ErrorAppThemeState;
  const ErrorAppThemeState._() : super._();

  @override
  AppThemeEntity get data => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAppThemeStateCopyWith<_$ErrorAppThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
