// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnlineInfo _$$_OnlineInfoFromJson(Map<String, dynamic> json) =>
    _$_OnlineInfo(
      visible: json['visible'] as bool?,
      lastSeen: json['last_seen'] as int?,
      isOnline: json['is_online'] as bool?,
      isMobile: json['is_mobile'] as bool?,
    );

Map<String, dynamic> _$$_OnlineInfoToJson(_$_OnlineInfo instance) =>
    <String, dynamic>{
      'visible': instance.visible,
      'last_seen': instance.lastSeen,
      'is_online': instance.isOnline,
      'is_mobile': instance.isMobile,
    };
