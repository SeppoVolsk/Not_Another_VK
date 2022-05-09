// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      albumId: json['album_id'] as int?,
      date: json['date'] as int?,
      id: json['id'] as int?,
      ownerId: json['owner_id'] as int?,
      accessKey: json['access_key'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
      postId: json['post_id'] as int?,
      sizes: (json['sizes'] as List<dynamic>?)
          ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      hasTags: json['has_tags'] as bool?,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'album_id': instance.albumId,
      'date': instance.date,
      'id': instance.id,
      'owner_id': instance.ownerId,
      'access_key': instance.accessKey,
      'lat': instance.lat,
      'long': instance.long,
      'post_id': instance.postId,
      'sizes': instance.sizes,
      'text': instance.text,
      'has_tags': instance.hasTags,
    };
