// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_access_closed')
  bool? get canAccessClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;
  int? get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'screen_name')
  String? get screenName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_50')
  String? get photo50 => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_100')
  String? get photo100 => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_info')
  OnlineInfo? get onlineInfo => throw _privateConstructorUsedError;
  int? get online => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_mobile')
  int? get onlineMobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_app')
  int? get onlineApp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'can_access_closed') bool? canAccessClosed,
      @JsonKey(name: 'is_closed') bool? isClosed,
      int? sex,
      @JsonKey(name: 'screen_name') String? screenName,
      @JsonKey(name: 'photo_50') String? photo50,
      @JsonKey(name: 'photo_100') String? photo100,
      @JsonKey(name: 'online_info') OnlineInfo? onlineInfo,
      int? online,
      @JsonKey(name: 'online_mobile') int? onlineMobile,
      @JsonKey(name: 'online_app') int? onlineApp});

  $OnlineInfoCopyWith<$Res>? get onlineInfo;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? canAccessClosed = freezed,
    Object? isClosed = freezed,
    Object? sex = freezed,
    Object? screenName = freezed,
    Object? photo50 = freezed,
    Object? photo100 = freezed,
    Object? onlineInfo = freezed,
    Object? online = freezed,
    Object? onlineMobile = freezed,
    Object? onlineApp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      canAccessClosed: canAccessClosed == freezed
          ? _value.canAccessClosed
          : canAccessClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      screenName: screenName == freezed
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo50: photo50 == freezed
          ? _value.photo50
          : photo50 // ignore: cast_nullable_to_non_nullable
              as String?,
      photo100: photo100 == freezed
          ? _value.photo100
          : photo100 // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineInfo: onlineInfo == freezed
          ? _value.onlineInfo
          : onlineInfo // ignore: cast_nullable_to_non_nullable
              as OnlineInfo?,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineMobile: onlineMobile == freezed
          ? _value.onlineMobile
          : onlineMobile // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineApp: onlineApp == freezed
          ? _value.onlineApp
          : onlineApp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $OnlineInfoCopyWith<$Res>? get onlineInfo {
    if (_value.onlineInfo == null) {
      return null;
    }

    return $OnlineInfoCopyWith<$Res>(_value.onlineInfo!, (value) {
      return _then(_value.copyWith(onlineInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'can_access_closed') bool? canAccessClosed,
      @JsonKey(name: 'is_closed') bool? isClosed,
      int? sex,
      @JsonKey(name: 'screen_name') String? screenName,
      @JsonKey(name: 'photo_50') String? photo50,
      @JsonKey(name: 'photo_100') String? photo100,
      @JsonKey(name: 'online_info') OnlineInfo? onlineInfo,
      int? online,
      @JsonKey(name: 'online_mobile') int? onlineMobile,
      @JsonKey(name: 'online_app') int? onlineApp});

  @override
  $OnlineInfoCopyWith<$Res>? get onlineInfo;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? canAccessClosed = freezed,
    Object? isClosed = freezed,
    Object? sex = freezed,
    Object? screenName = freezed,
    Object? photo50 = freezed,
    Object? photo100 = freezed,
    Object? onlineInfo = freezed,
    Object? online = freezed,
    Object? onlineMobile = freezed,
    Object? onlineApp = freezed,
  }) {
    return _then(_$_Profile(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      canAccessClosed: canAccessClosed == freezed
          ? _value.canAccessClosed
          : canAccessClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      screenName: screenName == freezed
          ? _value.screenName
          : screenName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo50: photo50 == freezed
          ? _value.photo50
          : photo50 // ignore: cast_nullable_to_non_nullable
              as String?,
      photo100: photo100 == freezed
          ? _value.photo100
          : photo100 // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineInfo: onlineInfo == freezed
          ? _value.onlineInfo
          : onlineInfo // ignore: cast_nullable_to_non_nullable
              as OnlineInfo?,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineMobile: onlineMobile == freezed
          ? _value.onlineMobile
          : onlineMobile // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineApp: onlineApp == freezed
          ? _value.onlineApp
          : onlineApp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'can_access_closed') this.canAccessClosed,
      @JsonKey(name: 'is_closed') this.isClosed,
      this.sex,
      @JsonKey(name: 'screen_name') this.screenName,
      @JsonKey(name: 'photo_50') this.photo50,
      @JsonKey(name: 'photo_100') this.photo100,
      @JsonKey(name: 'online_info') this.onlineInfo,
      this.online,
      @JsonKey(name: 'online_mobile') this.onlineMobile,
      @JsonKey(name: 'online_app') this.onlineApp});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'can_access_closed')
  final bool? canAccessClosed;
  @override
  @JsonKey(name: 'is_closed')
  final bool? isClosed;
  @override
  final int? sex;
  @override
  @JsonKey(name: 'screen_name')
  final String? screenName;
  @override
  @JsonKey(name: 'photo_50')
  final String? photo50;
  @override
  @JsonKey(name: 'photo_100')
  final String? photo100;
  @override
  @JsonKey(name: 'online_info')
  final OnlineInfo? onlineInfo;
  @override
  final int? online;
  @override
  @JsonKey(name: 'online_mobile')
  final int? onlineMobile;
  @override
  @JsonKey(name: 'online_app')
  final int? onlineApp;

  @override
  String toString() {
    return 'Profile(id: $id, firstName: $firstName, lastName: $lastName, canAccessClosed: $canAccessClosed, isClosed: $isClosed, sex: $sex, screenName: $screenName, photo50: $photo50, photo100: $photo100, onlineInfo: $onlineInfo, online: $online, onlineMobile: $onlineMobile, onlineApp: $onlineApp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.canAccessClosed, canAccessClosed) &&
            const DeepCollectionEquality().equals(other.isClosed, isClosed) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality()
                .equals(other.screenName, screenName) &&
            const DeepCollectionEquality().equals(other.photo50, photo50) &&
            const DeepCollectionEquality().equals(other.photo100, photo100) &&
            const DeepCollectionEquality()
                .equals(other.onlineInfo, onlineInfo) &&
            const DeepCollectionEquality().equals(other.online, online) &&
            const DeepCollectionEquality()
                .equals(other.onlineMobile, onlineMobile) &&
            const DeepCollectionEquality().equals(other.onlineApp, onlineApp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(canAccessClosed),
      const DeepCollectionEquality().hash(isClosed),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(screenName),
      const DeepCollectionEquality().hash(photo50),
      const DeepCollectionEquality().hash(photo100),
      const DeepCollectionEquality().hash(onlineInfo),
      const DeepCollectionEquality().hash(online),
      const DeepCollectionEquality().hash(onlineMobile),
      const DeepCollectionEquality().hash(onlineApp));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {final int? id,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'can_access_closed') final bool? canAccessClosed,
      @JsonKey(name: 'is_closed') final bool? isClosed,
      final int? sex,
      @JsonKey(name: 'screen_name') final String? screenName,
      @JsonKey(name: 'photo_50') final String? photo50,
      @JsonKey(name: 'photo_100') final String? photo100,
      @JsonKey(name: 'online_info') final OnlineInfo? onlineInfo,
      final int? online,
      @JsonKey(name: 'online_mobile') final int? onlineMobile,
      @JsonKey(name: 'online_app') final int? onlineApp}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'can_access_closed')
  bool? get canAccessClosed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_closed')
  bool? get isClosed => throw _privateConstructorUsedError;
  @override
  int? get sex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'screen_name')
  String? get screenName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'photo_50')
  String? get photo50 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'photo_100')
  String? get photo100 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'online_info')
  OnlineInfo? get onlineInfo => throw _privateConstructorUsedError;
  @override
  int? get online => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'online_mobile')
  int? get onlineMobile => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'online_app')
  int? get onlineApp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
