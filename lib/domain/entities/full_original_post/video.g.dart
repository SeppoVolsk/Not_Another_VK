// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      accessKey: json['access_key'] as String?,
      canComment: json['can_comment'] as int?,
      canLike: json['can_like'] as int?,
      canRepost: json['can_repost'] as int?,
      canSubscribe: json['can_subscribe'] as int?,
      canAddToFaves: json['can_add_to_faves'] as int?,
      canAdd: json['can_add'] as int?,
      comments: json['comments'] as int?,
      date: json['date'] as int?,
      description: json['description'] as String?,
      duration: json['duration'] as int?,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      ownerId: json['owner_id'] as int?,
      title: json['title'] as String?,
      trackCode: json['track_code'] as String?,
      type: json['type'] as String?,
      views: json['views'] as int?,
      localViews: json['local_views'] as int?,
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'access_key': instance.accessKey,
      'can_comment': instance.canComment,
      'can_like': instance.canLike,
      'can_repost': instance.canRepost,
      'can_subscribe': instance.canSubscribe,
      'can_add_to_faves': instance.canAddToFaves,
      'can_add': instance.canAdd,
      'comments': instance.comments,
      'date': instance.date,
      'description': instance.description,
      'duration': instance.duration,
      'image': instance.image,
      'id': instance.id,
      'owner_id': instance.ownerId,
      'title': instance.title,
      'track_code': instance.trackCode,
      'type': instance.type,
      'views': instance.views,
      'local_views': instance.localViews,
      'platform': instance.platform,
    };
