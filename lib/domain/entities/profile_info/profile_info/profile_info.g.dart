// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInfo _$$_ProfileInfoFromJson(Map<String, dynamic> json) =>
    _$_ProfileInfo(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProfileInfoToJson(_$_ProfileInfo instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
