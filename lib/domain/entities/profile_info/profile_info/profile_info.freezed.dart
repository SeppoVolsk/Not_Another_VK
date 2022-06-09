// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileInfo _$ProfileInfoFromJson(Map<String, dynamic> json) {
  return _ProfileInfo.fromJson(json);
}

/// @nodoc
mixin _$ProfileInfo {
  List<Response>? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInfoCopyWith<ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInfoCopyWith<$Res> {
  factory $ProfileInfoCopyWith(
          ProfileInfo value, $Res Function(ProfileInfo) then) =
      _$ProfileInfoCopyWithImpl<$Res>;
  $Res call({List<Response>? response});
}

/// @nodoc
class _$ProfileInfoCopyWithImpl<$Res> implements $ProfileInfoCopyWith<$Res> {
  _$ProfileInfoCopyWithImpl(this._value, this._then);

  final ProfileInfo _value;
  // ignore: unused_field
  final $Res Function(ProfileInfo) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileInfoCopyWith<$Res>
    implements $ProfileInfoCopyWith<$Res> {
  factory _$$_ProfileInfoCopyWith(
          _$_ProfileInfo value, $Res Function(_$_ProfileInfo) then) =
      __$$_ProfileInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<Response>? response});
}

/// @nodoc
class __$$_ProfileInfoCopyWithImpl<$Res> extends _$ProfileInfoCopyWithImpl<$Res>
    implements _$$_ProfileInfoCopyWith<$Res> {
  __$$_ProfileInfoCopyWithImpl(
      _$_ProfileInfo _value, $Res Function(_$_ProfileInfo) _then)
      : super(_value, (v) => _then(v as _$_ProfileInfo));

  @override
  _$_ProfileInfo get _value => super._value as _$_ProfileInfo;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_ProfileInfo(
      response: response == freezed
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileInfo implements _ProfileInfo {
  _$_ProfileInfo({final List<Response>? response}) : _response = response;

  factory _$_ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileInfoFromJson(json);

  final List<Response>? _response;
  @override
  List<Response>? get response {
    final value = _response;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileInfo(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileInfo &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      __$$_ProfileInfoCopyWithImpl<_$_ProfileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileInfoToJson(this);
  }
}

abstract class _ProfileInfo implements ProfileInfo {
  factory _ProfileInfo({final List<Response>? response}) = _$_ProfileInfo;

  factory _ProfileInfo.fromJson(Map<String, dynamic> json) =
      _$_ProfileInfo.fromJson;

  @override
  List<Response>? get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileInfoCopyWith<_$_ProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
