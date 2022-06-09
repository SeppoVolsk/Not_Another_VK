// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      id: json['id'] as int?,
      photo50: json['photo_50'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      canAccessClosed: json['can_access_closed'] as bool?,
      isClosed: json['is_closed'] as bool?,
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo_50': instance.photo50,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'can_access_closed': instance.canAccessClosed,
      'is_closed': instance.isClosed,
    };
