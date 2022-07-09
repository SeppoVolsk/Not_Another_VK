// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mainscreenentity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainScreenEntity {
  List<Post>? get posts => throw _privateConstructorUsedError;
  HistoryDataProvider? get history => throw _privateConstructorUsedError;
  String? get newsQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainScreenEntityCopyWith<MainScreenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEntityCopyWith<$Res> {
  factory $MainScreenEntityCopyWith(
          MainScreenEntity value, $Res Function(MainScreenEntity) then) =
      _$MainScreenEntityCopyWithImpl<$Res>;
  $Res call(
      {List<Post>? posts, HistoryDataProvider? history, String? newsQuery});
}

/// @nodoc
class _$MainScreenEntityCopyWithImpl<$Res>
    implements $MainScreenEntityCopyWith<$Res> {
  _$MainScreenEntityCopyWithImpl(this._value, this._then);

  final MainScreenEntity _value;
  // ignore: unused_field
  final $Res Function(MainScreenEntity) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? history = freezed,
    Object? newsQuery = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryDataProvider?,
      newsQuery: newsQuery == freezed
          ? _value.newsQuery
          : newsQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_MainScreenEntityCopyWith<$Res>
    implements $MainScreenEntityCopyWith<$Res> {
  factory _$$_MainScreenEntityCopyWith(
          _$_MainScreenEntity value, $Res Function(_$_MainScreenEntity) then) =
      __$$_MainScreenEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Post>? posts, HistoryDataProvider? history, String? newsQuery});
}

/// @nodoc
class __$$_MainScreenEntityCopyWithImpl<$Res>
    extends _$MainScreenEntityCopyWithImpl<$Res>
    implements _$$_MainScreenEntityCopyWith<$Res> {
  __$$_MainScreenEntityCopyWithImpl(
      _$_MainScreenEntity _value, $Res Function(_$_MainScreenEntity) _then)
      : super(_value, (v) => _then(v as _$_MainScreenEntity));

  @override
  _$_MainScreenEntity get _value => super._value as _$_MainScreenEntity;

  @override
  $Res call({
    Object? posts = freezed,
    Object? history = freezed,
    Object? newsQuery = freezed,
  }) {
    return _then(_$_MainScreenEntity(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as HistoryDataProvider?,
      newsQuery: newsQuery == freezed
          ? _value.newsQuery
          : newsQuery // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MainScreenEntity implements _MainScreenEntity {
  const _$_MainScreenEntity({this.posts, this.history, this.newsQuery});

  @override
  final List<Post>? posts;
  @override
  final HistoryDataProvider? history;
  @override
  final String? newsQuery;

  @override
  String toString() {
    return 'MainScreenEntity(posts: $posts, history: $history, newsQuery: $newsQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainScreenEntity &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.newsQuery, newsQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(newsQuery));

  @JsonKey(ignore: true)
  @override
  _$$_MainScreenEntityCopyWith<_$_MainScreenEntity> get copyWith =>
      __$$_MainScreenEntityCopyWithImpl<_$_MainScreenEntity>(this, _$identity);
}

abstract class _MainScreenEntity implements MainScreenEntity {
  const factory _MainScreenEntity(
      {final List<Post>? posts,
      final HistoryDataProvider? history,
      final String? newsQuery}) = _$_MainScreenEntity;

  @override
  List<Post>? get posts => throw _privateConstructorUsedError;
  @override
  HistoryDataProvider? get history => throw _privateConstructorUsedError;
  @override
  String? get newsQuery => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainScreenEntityCopyWith<_$_MainScreenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
