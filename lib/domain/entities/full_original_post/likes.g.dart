// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Likes _$$_LikesFromJson(Map<String, dynamic> json) => _$_Likes(
      canLike: json['can_like'] as int?,
      count: json['count'] as int?,
      userLikes: json['user_likes'] as int?,
      canPublish: json['can_publish'] as int?,
    );

Map<String, dynamic> _$$_LikesToJson(_$_Likes instance) => <String, dynamic>{
      'can_like': instance.canLike,
      'count': instance.count,
      'user_likes': instance.userLikes,
      'can_publish': instance.canPublish,
    };
