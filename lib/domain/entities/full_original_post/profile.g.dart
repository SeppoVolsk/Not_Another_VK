// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      canAccessClosed: json['can_access_closed'] as bool?,
      isClosed: json['is_closed'] as bool?,
      sex: json['sex'] as int?,
      screenName: json['screen_name'] as String?,
      photo50: json['photo_50'] as String?,
      photo100: json['photo_100'] as String?,
      onlineInfo: json['online_info'] == null
          ? null
          : OnlineInfo.fromJson(json['online_info'] as Map<String, dynamic>),
      online: json['online'] as int?,
      onlineMobile: json['online_mobile'] as int?,
      onlineApp: json['online_app'] as int?,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'can_access_closed': instance.canAccessClosed,
      'is_closed': instance.isClosed,
      'sex': instance.sex,
      'screen_name': instance.screenName,
      'photo_50': instance.photo50,
      'photo_100': instance.photo100,
      'online_info': instance.onlineInfo,
      'online': instance.online,
      'online_mobile': instance.onlineMobile,
      'online_app': instance.onlineApp,
    };
