// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'full_original_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullOriginalPost _$FullOriginalPostFromJson(Map<String, dynamic> json) {
  return _FullOriginalPost.fromJson(json);
}

/// @nodoc
mixin _$FullOriginalPost {
  Response? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullOriginalPostCopyWith<FullOriginalPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullOriginalPostCopyWith<$Res> {
  factory $FullOriginalPostCopyWith(
          FullOriginalPost value, $Res Function(FullOriginalPost) then) =
      _$FullOriginalPostCopyWithImpl<$Res>;
  $Res call({Response? response});

  $ResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$FullOriginalPostCopyWithImpl<$Res>
    implements $FullOriginalPostCopyWith<$Res> {
  _$FullOriginalPostCopyWithImpl(this._value, this._then);

  final FullOriginalPost _value;
  // ignore: unused_field
  final $Res Function(FullOriginalPost) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response?,
    ));
  }

  @override
  $ResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$$_FullOriginalPostCopyWith<$Res>
    implements $FullOriginalPostCopyWith<$Res> {
  factory _$$_FullOriginalPostCopyWith(
          _$_FullOriginalPost value, $Res Function(_$_FullOriginalPost) then) =
      __$$_FullOriginalPostCopyWithImpl<$Res>;
  @override
  $Res call({Response? response});

  @override
  $ResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$_FullOriginalPostCopyWithImpl<$Res>
    extends _$FullOriginalPostCopyWithImpl<$Res>
    implements _$$_FullOriginalPostCopyWith<$Res> {
  __$$_FullOriginalPostCopyWithImpl(
      _$_FullOriginalPost _value, $Res Function(_$_FullOriginalPost) _then)
      : super(_value, (v) => _then(v as _$_FullOriginalPost));

  @override
  _$_FullOriginalPost get _value => super._value as _$_FullOriginalPost;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_FullOriginalPost(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FullOriginalPost implements _FullOriginalPost {
  _$_FullOriginalPost({this.response});

  factory _$_FullOriginalPost.fromJson(Map<String, dynamic> json) =>
      _$$_FullOriginalPostFromJson(json);

  @override
  final Response? response;

  @override
  String toString() {
    return 'FullOriginalPost(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullOriginalPost &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_FullOriginalPostCopyWith<_$_FullOriginalPost> get copyWith =>
      __$$_FullOriginalPostCopyWithImpl<_$_FullOriginalPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullOriginalPostToJson(this);
  }
}

abstract class _FullOriginalPost implements FullOriginalPost {
  factory _FullOriginalPost({final Response? response}) = _$_FullOriginalPost;

  factory _FullOriginalPost.fromJson(Map<String, dynamic> json) =
      _$_FullOriginalPost.fromJson;

  @override
  Response? get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FullOriginalPostCopyWith<_$_FullOriginalPost> get copyWith =>
      throw _privateConstructorUsedError;
}
