// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appthemeentity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppThemeEntity {
  ThemeMode? get appThemeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeEntityCopyWith<AppThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeEntityCopyWith<$Res> {
  factory $AppThemeEntityCopyWith(
          AppThemeEntity value, $Res Function(AppThemeEntity) then) =
      _$AppThemeEntityCopyWithImpl<$Res>;
  $Res call({ThemeMode? appThemeMode});
}

/// @nodoc
class _$AppThemeEntityCopyWithImpl<$Res>
    implements $AppThemeEntityCopyWith<$Res> {
  _$AppThemeEntityCopyWithImpl(this._value, this._then);

  final AppThemeEntity _value;
  // ignore: unused_field
  final $Res Function(AppThemeEntity) _then;

  @override
  $Res call({
    Object? appThemeMode = freezed,
  }) {
    return _then(_value.copyWith(
      appThemeMode: appThemeMode == freezed
          ? _value.appThemeMode
          : appThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc
abstract class _$$_AppThemeEntityCopyWith<$Res>
    implements $AppThemeEntityCopyWith<$Res> {
  factory _$$_AppThemeEntityCopyWith(
          _$_AppThemeEntity value, $Res Function(_$_AppThemeEntity) then) =
      __$$_AppThemeEntityCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode? appThemeMode});
}

/// @nodoc
class __$$_AppThemeEntityCopyWithImpl<$Res>
    extends _$AppThemeEntityCopyWithImpl<$Res>
    implements _$$_AppThemeEntityCopyWith<$Res> {
  __$$_AppThemeEntityCopyWithImpl(
      _$_AppThemeEntity _value, $Res Function(_$_AppThemeEntity) _then)
      : super(_value, (v) => _then(v as _$_AppThemeEntity));

  @override
  _$_AppThemeEntity get _value => super._value as _$_AppThemeEntity;

  @override
  $Res call({
    Object? appThemeMode = freezed,
  }) {
    return _then(_$_AppThemeEntity(
      appThemeMode: appThemeMode == freezed
          ? _value.appThemeMode
          : appThemeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc

class _$_AppThemeEntity implements _AppThemeEntity {
  _$_AppThemeEntity({this.appThemeMode});

  @override
  final ThemeMode? appThemeMode;

  @override
  String toString() {
    return 'AppThemeEntity(appThemeMode: $appThemeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppThemeEntity &&
            const DeepCollectionEquality()
                .equals(other.appThemeMode, appThemeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appThemeMode));

  @JsonKey(ignore: true)
  @override
  _$$_AppThemeEntityCopyWith<_$_AppThemeEntity> get copyWith =>
      __$$_AppThemeEntityCopyWithImpl<_$_AppThemeEntity>(this, _$identity);
}

abstract class _AppThemeEntity implements AppThemeEntity {
  factory _AppThemeEntity({final ThemeMode? appThemeMode}) = _$_AppThemeEntity;

  @override
  ThemeMode? get appThemeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppThemeEntityCopyWith<_$_AppThemeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
