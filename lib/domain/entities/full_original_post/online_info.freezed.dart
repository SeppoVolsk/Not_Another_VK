// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'online_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnlineInfo _$OnlineInfoFromJson(Map<String, dynamic> json) {
  return _OnlineInfo.fromJson(json);
}

/// @nodoc
mixin _$OnlineInfo {
  bool? get visible => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_seen')
  int? get lastSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool? get isOnline => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_mobile')
  bool? get isMobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlineInfoCopyWith<OnlineInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineInfoCopyWith<$Res> {
  factory $OnlineInfoCopyWith(
          OnlineInfo value, $Res Function(OnlineInfo) then) =
      _$OnlineInfoCopyWithImpl<$Res>;
  $Res call(
      {bool? visible,
      @JsonKey(name: 'last_seen') int? lastSeen,
      @JsonKey(name: 'is_online') bool? isOnline,
      @JsonKey(name: 'is_mobile') bool? isMobile});
}

/// @nodoc
class _$OnlineInfoCopyWithImpl<$Res> implements $OnlineInfoCopyWith<$Res> {
  _$OnlineInfoCopyWithImpl(this._value, this._then);

  final OnlineInfo _value;
  // ignore: unused_field
  final $Res Function(OnlineInfo) _then;

  @override
  $Res call({
    Object? visible = freezed,
    Object? lastSeen = freezed,
    Object? isOnline = freezed,
    Object? isMobile = freezed,
  }) {
    return _then(_value.copyWith(
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMobile: isMobile == freezed
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_OnlineInfoCopyWith<$Res>
    implements $OnlineInfoCopyWith<$Res> {
  factory _$$_OnlineInfoCopyWith(
          _$_OnlineInfo value, $Res Function(_$_OnlineInfo) then) =
      __$$_OnlineInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? visible,
      @JsonKey(name: 'last_seen') int? lastSeen,
      @JsonKey(name: 'is_online') bool? isOnline,
      @JsonKey(name: 'is_mobile') bool? isMobile});
}

/// @nodoc
class __$$_OnlineInfoCopyWithImpl<$Res> extends _$OnlineInfoCopyWithImpl<$Res>
    implements _$$_OnlineInfoCopyWith<$Res> {
  __$$_OnlineInfoCopyWithImpl(
      _$_OnlineInfo _value, $Res Function(_$_OnlineInfo) _then)
      : super(_value, (v) => _then(v as _$_OnlineInfo));

  @override
  _$_OnlineInfo get _value => super._value as _$_OnlineInfo;

  @override
  $Res call({
    Object? visible = freezed,
    Object? lastSeen = freezed,
    Object? isOnline = freezed,
    Object? isMobile = freezed,
  }) {
    return _then(_$_OnlineInfo(
      visible: visible == freezed
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int?,
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMobile: isMobile == freezed
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnlineInfo implements _OnlineInfo {
  _$_OnlineInfo(
      {this.visible,
      @JsonKey(name: 'last_seen') this.lastSeen,
      @JsonKey(name: 'is_online') this.isOnline,
      @JsonKey(name: 'is_mobile') this.isMobile});

  factory _$_OnlineInfo.fromJson(Map<String, dynamic> json) =>
      _$$_OnlineInfoFromJson(json);

  @override
  final bool? visible;
  @override
  @JsonKey(name: 'last_seen')
  final int? lastSeen;
  @override
  @JsonKey(name: 'is_online')
  final bool? isOnline;
  @override
  @JsonKey(name: 'is_mobile')
  final bool? isMobile;

  @override
  String toString() {
    return 'OnlineInfo(visible: $visible, lastSeen: $lastSeen, isOnline: $isOnline, isMobile: $isMobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnlineInfo &&
            const DeepCollectionEquality().equals(other.visible, visible) &&
            const DeepCollectionEquality().equals(other.lastSeen, lastSeen) &&
            const DeepCollectionEquality().equals(other.isOnline, isOnline) &&
            const DeepCollectionEquality().equals(other.isMobile, isMobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(visible),
      const DeepCollectionEquality().hash(lastSeen),
      const DeepCollectionEquality().hash(isOnline),
      const DeepCollectionEquality().hash(isMobile));

  @JsonKey(ignore: true)
  @override
  _$$_OnlineInfoCopyWith<_$_OnlineInfo> get copyWith =>
      __$$_OnlineInfoCopyWithImpl<_$_OnlineInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlineInfoToJson(this);
  }
}

abstract class _OnlineInfo implements OnlineInfo {
  factory _OnlineInfo(
      {final bool? visible,
      @JsonKey(name: 'last_seen') final int? lastSeen,
      @JsonKey(name: 'is_online') final bool? isOnline,
      @JsonKey(name: 'is_mobile') final bool? isMobile}) = _$_OnlineInfo;

  factory _OnlineInfo.fromJson(Map<String, dynamic> json) =
      _$_OnlineInfo.fromJson;

  @override
  bool? get visible => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_seen')
  int? get lastSeen => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_online')
  bool? get isOnline => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_mobile')
  bool? get isMobile => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OnlineInfoCopyWith<_$_OnlineInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
