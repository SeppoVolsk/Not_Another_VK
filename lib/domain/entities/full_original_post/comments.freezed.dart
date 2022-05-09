// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comments _$CommentsFromJson(Map<String, dynamic> json) {
  return _Comments.fromJson(json);
}

/// @nodoc
mixin _$Comments {
  @JsonKey(name: 'can_post')
  int? get canPost => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentsCopyWith<Comments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsCopyWith<$Res> {
  factory $CommentsCopyWith(Comments value, $Res Function(Comments) then) =
      _$CommentsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'can_post') int? canPost, int? count});
}

/// @nodoc
class _$CommentsCopyWithImpl<$Res> implements $CommentsCopyWith<$Res> {
  _$CommentsCopyWithImpl(this._value, this._then);

  final Comments _value;
  // ignore: unused_field
  final $Res Function(Comments) _then;

  @override
  $Res call({
    Object? canPost = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      canPost: canPost == freezed
          ? _value.canPost
          : canPost // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentsCopyWith<$Res> implements $CommentsCopyWith<$Res> {
  factory _$$_CommentsCopyWith(
          _$_Comments value, $Res Function(_$_Comments) then) =
      __$$_CommentsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'can_post') int? canPost, int? count});
}

/// @nodoc
class __$$_CommentsCopyWithImpl<$Res> extends _$CommentsCopyWithImpl<$Res>
    implements _$$_CommentsCopyWith<$Res> {
  __$$_CommentsCopyWithImpl(
      _$_Comments _value, $Res Function(_$_Comments) _then)
      : super(_value, (v) => _then(v as _$_Comments));

  @override
  _$_Comments get _value => super._value as _$_Comments;

  @override
  $Res call({
    Object? canPost = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_Comments(
      canPost: canPost == freezed
          ? _value.canPost
          : canPost // ignore: cast_nullable_to_non_nullable
              as int?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comments implements _Comments {
  _$_Comments({@JsonKey(name: 'can_post') this.canPost, this.count});

  factory _$_Comments.fromJson(Map<String, dynamic> json) =>
      _$$_CommentsFromJson(json);

  @override
  @JsonKey(name: 'can_post')
  final int? canPost;
  @override
  final int? count;

  @override
  String toString() {
    return 'Comments(canPost: $canPost, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comments &&
            const DeepCollectionEquality().equals(other.canPost, canPost) &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(canPost),
      const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_CommentsCopyWith<_$_Comments> get copyWith =>
      __$$_CommentsCopyWithImpl<_$_Comments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentsToJson(this);
  }
}

abstract class _Comments implements Comments {
  factory _Comments(
      {@JsonKey(name: 'can_post') final int? canPost,
      final int? count}) = _$_Comments;

  factory _Comments.fromJson(Map<String, dynamic> json) = _$_Comments.fromJson;

  @override
  @JsonKey(name: 'can_post')
  int? get canPost => throw _privateConstructorUsedError;
  @override
  int? get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CommentsCopyWith<_$_Comments> get copyWith =>
      throw _privateConstructorUsedError;
}
