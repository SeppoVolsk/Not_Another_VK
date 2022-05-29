// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authenticationentity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEntity {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEntityCopyWith<AuthenticationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEntityCopyWith<$Res> {
  factory $AuthenticationEntityCopyWith(AuthenticationEntity value,
          $Res Function(AuthenticationEntity) then) =
      _$AuthenticationEntityCopyWithImpl<$Res>;
  $Res call({String? accessToken, String? userId});
}

/// @nodoc
class _$AuthenticationEntityCopyWithImpl<$Res>
    implements $AuthenticationEntityCopyWith<$Res> {
  _$AuthenticationEntityCopyWithImpl(this._value, this._then);

  final AuthenticationEntity _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEntity) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationEntityCopyWith<$Res>
    implements $AuthenticationEntityCopyWith<$Res> {
  factory _$$_AuthenticationEntityCopyWith(_$_AuthenticationEntity value,
          $Res Function(_$_AuthenticationEntity) then) =
      __$$_AuthenticationEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? accessToken, String? userId});
}

/// @nodoc
class __$$_AuthenticationEntityCopyWithImpl<$Res>
    extends _$AuthenticationEntityCopyWithImpl<$Res>
    implements _$$_AuthenticationEntityCopyWith<$Res> {
  __$$_AuthenticationEntityCopyWithImpl(_$_AuthenticationEntity _value,
      $Res Function(_$_AuthenticationEntity) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationEntity));

  @override
  _$_AuthenticationEntity get _value => super._value as _$_AuthenticationEntity;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_AuthenticationEntity(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthenticationEntity implements _AuthenticationEntity {
  _$_AuthenticationEntity({this.accessToken, this.userId});

  @override
  final String? accessToken;
  @override
  final String? userId;

  @override
  String toString() {
    return 'AuthenticationEntity(accessToken: $accessToken, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationEntity &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationEntityCopyWith<_$_AuthenticationEntity> get copyWith =>
      __$$_AuthenticationEntityCopyWithImpl<_$_AuthenticationEntity>(
          this, _$identity);
}

abstract class _AuthenticationEntity implements AuthenticationEntity {
  factory _AuthenticationEntity(
      {final String? accessToken,
      final String? userId}) = _$_AuthenticationEntity;

  @override
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationEntityCopyWith<_$_AuthenticationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
