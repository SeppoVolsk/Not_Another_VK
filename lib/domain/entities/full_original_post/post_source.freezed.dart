// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostSource _$PostSourceFromJson(Map<String, dynamic> json) {
  return _PostSource.fromJson(json);
}

/// @nodoc
mixin _$PostSource {
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostSourceCopyWith<PostSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSourceCopyWith<$Res> {
  factory $PostSourceCopyWith(
          PostSource value, $Res Function(PostSource) then) =
      _$PostSourceCopyWithImpl<$Res>;
  $Res call({String? type});
}

/// @nodoc
class _$PostSourceCopyWithImpl<$Res> implements $PostSourceCopyWith<$Res> {
  _$PostSourceCopyWithImpl(this._value, this._then);

  final PostSource _value;
  // ignore: unused_field
  final $Res Function(PostSource) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostSourceCopyWith<$Res>
    implements $PostSourceCopyWith<$Res> {
  factory _$$_PostSourceCopyWith(
          _$_PostSource value, $Res Function(_$_PostSource) then) =
      __$$_PostSourceCopyWithImpl<$Res>;
  @override
  $Res call({String? type});
}

/// @nodoc
class __$$_PostSourceCopyWithImpl<$Res> extends _$PostSourceCopyWithImpl<$Res>
    implements _$$_PostSourceCopyWith<$Res> {
  __$$_PostSourceCopyWithImpl(
      _$_PostSource _value, $Res Function(_$_PostSource) _then)
      : super(_value, (v) => _then(v as _$_PostSource));

  @override
  _$_PostSource get _value => super._value as _$_PostSource;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_PostSource(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostSource implements _PostSource {
  _$_PostSource({this.type});

  factory _$_PostSource.fromJson(Map<String, dynamic> json) =>
      _$$_PostSourceFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'PostSource(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostSource &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_PostSourceCopyWith<_$_PostSource> get copyWith =>
      __$$_PostSourceCopyWithImpl<_$_PostSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostSourceToJson(this);
  }
}

abstract class _PostSource implements PostSource {
  factory _PostSource({final String? type}) = _$_PostSource;

  factory _PostSource.fromJson(Map<String, dynamic> json) =
      _$_PostSource.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostSourceCopyWith<_$_PostSource> get copyWith =>
      throw _privateConstructorUsedError;
}
