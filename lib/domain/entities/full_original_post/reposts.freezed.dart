// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reposts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reposts _$RepostsFromJson(Map<String, dynamic> json) {
  return _Reposts.fromJson(json);
}

/// @nodoc
mixin _$Reposts {
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_reposted')
  int? get userReposted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepostsCopyWith<Reposts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepostsCopyWith<$Res> {
  factory $RepostsCopyWith(Reposts value, $Res Function(Reposts) then) =
      _$RepostsCopyWithImpl<$Res>;
  $Res call({int? count, @JsonKey(name: 'user_reposted') int? userReposted});
}

/// @nodoc
class _$RepostsCopyWithImpl<$Res> implements $RepostsCopyWith<$Res> {
  _$RepostsCopyWithImpl(this._value, this._then);

  final Reposts _value;
  // ignore: unused_field
  final $Res Function(Reposts) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? userReposted = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userReposted: userReposted == freezed
          ? _value.userReposted
          : userReposted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_RepostsCopyWith<$Res> implements $RepostsCopyWith<$Res> {
  factory _$$_RepostsCopyWith(
          _$_Reposts value, $Res Function(_$_Reposts) then) =
      __$$_RepostsCopyWithImpl<$Res>;
  @override
  $Res call({int? count, @JsonKey(name: 'user_reposted') int? userReposted});
}

/// @nodoc
class __$$_RepostsCopyWithImpl<$Res> extends _$RepostsCopyWithImpl<$Res>
    implements _$$_RepostsCopyWith<$Res> {
  __$$_RepostsCopyWithImpl(_$_Reposts _value, $Res Function(_$_Reposts) _then)
      : super(_value, (v) => _then(v as _$_Reposts));

  @override
  _$_Reposts get _value => super._value as _$_Reposts;

  @override
  $Res call({
    Object? count = freezed,
    Object? userReposted = freezed,
  }) {
    return _then(_$_Reposts(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userReposted: userReposted == freezed
          ? _value.userReposted
          : userReposted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reposts implements _Reposts {
  _$_Reposts({this.count, @JsonKey(name: 'user_reposted') this.userReposted});

  factory _$_Reposts.fromJson(Map<String, dynamic> json) =>
      _$$_RepostsFromJson(json);

  @override
  final int? count;
  @override
  @JsonKey(name: 'user_reposted')
  final int? userReposted;

  @override
  String toString() {
    return 'Reposts(count: $count, userReposted: $userReposted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reposts &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.userReposted, userReposted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(userReposted));

  @JsonKey(ignore: true)
  @override
  _$$_RepostsCopyWith<_$_Reposts> get copyWith =>
      __$$_RepostsCopyWithImpl<_$_Reposts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepostsToJson(this);
  }
}

abstract class _Reposts implements Reposts {
  factory _Reposts(
      {final int? count,
      @JsonKey(name: 'user_reposted') final int? userReposted}) = _$_Reposts;

  factory _Reposts.fromJson(Map<String, dynamic> json) = _$_Reposts.fromJson;

  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_reposted')
  int? get userReposted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RepostsCopyWith<_$_Reposts> get copyWith =>
      throw _privateConstructorUsedError;
}
