// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Likes _$LikesFromJson(Map<String, dynamic> json) {
  return _Likes.fromJson(json);
}

/// @nodoc
mixin _$Likes {
  @JsonKey(name: 'can_like')
  int? get canLike => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_likes')
  int? get userLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_publish')
  int? get canPublish => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikesCopyWith<Likes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesCopyWith<$Res> {
  factory $LikesCopyWith(Likes value, $Res Function(Likes) then) =
      _$LikesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'can_like') int? canLike,
      int? count,
      @JsonKey(name: 'user_likes') int? userLikes,
      @JsonKey(name: 'can_publish') int? canPublish});
}

/// @nodoc
class _$LikesCopyWithImpl<$Res> implements $LikesCopyWith<$Res> {
  _$LikesCopyWithImpl(this._value, this._then);

  final Likes _value;
  // ignore: unused_field
  final $Res Function(Likes) _then;

  @override
  $Res call({
    Object? canLike = freezed,
    Object? count = freezed,
    Object? userLikes = freezed,
    Object? canPublish = freezed,
  }) {
    return _then(_value.copyWith(
      canLike: canLike == freezed
          ? _value.canLike
          : canLike // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userLikes: userLikes == freezed
          ? _value.userLikes
          : userLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      canPublish: canPublish == freezed
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_LikesCopyWith<$Res> implements $LikesCopyWith<$Res> {
  factory _$$_LikesCopyWith(_$_Likes value, $Res Function(_$_Likes) then) =
      __$$_LikesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'can_like') int? canLike,
      int? count,
      @JsonKey(name: 'user_likes') int? userLikes,
      @JsonKey(name: 'can_publish') int? canPublish});
}

/// @nodoc
class __$$_LikesCopyWithImpl<$Res> extends _$LikesCopyWithImpl<$Res>
    implements _$$_LikesCopyWith<$Res> {
  __$$_LikesCopyWithImpl(_$_Likes _value, $Res Function(_$_Likes) _then)
      : super(_value, (v) => _then(v as _$_Likes));

  @override
  _$_Likes get _value => super._value as _$_Likes;

  @override
  $Res call({
    Object? canLike = freezed,
    Object? count = freezed,
    Object? userLikes = freezed,
    Object? canPublish = freezed,
  }) {
    return _then(_$_Likes(
      canLike: canLike == freezed
          ? _value.canLike
          : canLike // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      userLikes: userLikes == freezed
          ? _value.userLikes
          : userLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      canPublish: canPublish == freezed
          ? _value.canPublish
          : canPublish // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Likes implements _Likes {
  _$_Likes(
      {@JsonKey(name: 'can_like') this.canLike,
      this.count,
      @JsonKey(name: 'user_likes') this.userLikes,
      @JsonKey(name: 'can_publish') this.canPublish});

  factory _$_Likes.fromJson(Map<String, dynamic> json) =>
      _$$_LikesFromJson(json);

  @override
  @JsonKey(name: 'can_like')
  final int? canLike;
  @override
  final int? count;
  @override
  @JsonKey(name: 'user_likes')
  final int? userLikes;
  @override
  @JsonKey(name: 'can_publish')
  final int? canPublish;

  @override
  String toString() {
    return 'Likes(canLike: $canLike, count: $count, userLikes: $userLikes, canPublish: $canPublish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Likes &&
            const DeepCollectionEquality().equals(other.canLike, canLike) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.userLikes, userLikes) &&
            const DeepCollectionEquality()
                .equals(other.canPublish, canPublish));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(canLike),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(userLikes),
      const DeepCollectionEquality().hash(canPublish));

  @JsonKey(ignore: true)
  @override
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      __$$_LikesCopyWithImpl<_$_Likes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikesToJson(this);
  }
}

abstract class _Likes implements Likes {
  factory _Likes(
      {@JsonKey(name: 'can_like') final int? canLike,
      final int? count,
      @JsonKey(name: 'user_likes') final int? userLikes,
      @JsonKey(name: 'can_publish') final int? canPublish}) = _$_Likes;

  factory _Likes.fromJson(Map<String, dynamic> json) = _$_Likes.fromJson;

  @override
  @JsonKey(name: 'can_like')
  int? get canLike => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_likes')
  int? get userLikes => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'can_publish')
  int? get canPublish => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      throw _privateConstructorUsedError;
}
