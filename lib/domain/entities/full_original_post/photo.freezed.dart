// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_key')
  String? get accessKey => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get long => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int? get postId => throw _privateConstructorUsedError;
  List<Size>? get sizes => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_tags')
  bool? get hasTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'album_id') int? albumId,
      int? date,
      int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'access_key') String? accessKey,
      double? lat,
      double? long,
      @JsonKey(name: 'post_id') int? postId,
      List<Size>? sizes,
      String? text,
      @JsonKey(name: 'has_tags') bool? hasTags});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? albumId = freezed,
    Object? date = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? accessKey = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? postId = freezed,
    Object? sizes = freezed,
    Object? text = freezed,
    Object? hasTags = freezed,
  }) {
    return _then(_value.copyWith(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      accessKey: accessKey == freezed
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTags: hasTags == freezed
          ? _value.hasTags
          : hasTags // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$_PhotoCopyWith(_$_Photo value, $Res Function(_$_Photo) then) =
      __$$_PhotoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'album_id') int? albumId,
      int? date,
      int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'access_key') String? accessKey,
      double? lat,
      double? long,
      @JsonKey(name: 'post_id') int? postId,
      List<Size>? sizes,
      String? text,
      @JsonKey(name: 'has_tags') bool? hasTags});
}

/// @nodoc
class __$$_PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$$_PhotoCopyWith<$Res> {
  __$$_PhotoCopyWithImpl(_$_Photo _value, $Res Function(_$_Photo) _then)
      : super(_value, (v) => _then(v as _$_Photo));

  @override
  _$_Photo get _value => super._value as _$_Photo;

  @override
  $Res call({
    Object? albumId = freezed,
    Object? date = freezed,
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? accessKey = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? postId = freezed,
    Object? sizes = freezed,
    Object? text = freezed,
    Object? hasTags = freezed,
  }) {
    return _then(_$_Photo(
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      accessKey: accessKey == freezed
          ? _value.accessKey
          : accessKey // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizes: sizes == freezed
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<Size>?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTags: hasTags == freezed
          ? _value.hasTags
          : hasTags // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  _$_Photo(
      {@JsonKey(name: 'album_id') this.albumId,
      this.date,
      this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'access_key') this.accessKey,
      this.lat,
      this.long,
      @JsonKey(name: 'post_id') this.postId,
      final List<Size>? sizes,
      this.text,
      @JsonKey(name: 'has_tags') this.hasTags})
      : _sizes = sizes;

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  @JsonKey(name: 'album_id')
  final int? albumId;
  @override
  final int? date;
  @override
  final int? id;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'access_key')
  final String? accessKey;
  @override
  final double? lat;
  @override
  final double? long;
  @override
  @JsonKey(name: 'post_id')
  final int? postId;
  final List<Size>? _sizes;
  @override
  List<Size>? get sizes {
    final value = _sizes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  @JsonKey(name: 'has_tags')
  final bool? hasTags;

  @override
  String toString() {
    return 'Photo(albumId: $albumId, date: $date, id: $id, ownerId: $ownerId, accessKey: $accessKey, lat: $lat, long: $long, postId: $postId, sizes: $sizes, text: $text, hasTags: $hasTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Photo &&
            const DeepCollectionEquality().equals(other.albumId, albumId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.accessKey, accessKey) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.hasTags, hasTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(albumId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(accessKey),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long),
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(_sizes),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(hasTags));

  @JsonKey(ignore: true)
  @override
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      __$$_PhotoCopyWithImpl<_$_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  factory _Photo(
      {@JsonKey(name: 'album_id') final int? albumId,
      final int? date,
      final int? id,
      @JsonKey(name: 'owner_id') final int? ownerId,
      @JsonKey(name: 'access_key') final String? accessKey,
      final double? lat,
      final double? long,
      @JsonKey(name: 'post_id') final int? postId,
      final List<Size>? sizes,
      final String? text,
      @JsonKey(name: 'has_tags') final bool? hasTags}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  @JsonKey(name: 'album_id')
  int? get albumId => throw _privateConstructorUsedError;
  @override
  int? get date => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'access_key')
  String? get accessKey => throw _privateConstructorUsedError;
  @override
  double? get lat => throw _privateConstructorUsedError;
  @override
  double? get long => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'post_id')
  int? get postId => throw _privateConstructorUsedError;
  @override
  List<Size>? get sizes => throw _privateConstructorUsedError;
  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'has_tags')
  bool? get hasTags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoCopyWith<_$_Photo> get copyWith =>
      throw _privateConstructorUsedError;
}
