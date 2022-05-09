// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      id: json['id'] as int?,
      date: json['date'] as int?,
      ownerId: json['owner_id'] as int?,
      fromId: json['from_id'] as int?,
      postId: json['post_id'] as int?,
      parentsStack: json['parents_stack'] as List<dynamic>?,
      postType: json['post_type'] as String?,
      text: json['text'] as String?,
      markedAsAds: json['marked_as_ads'] as int?,
      postSource: json['post_source'] == null
          ? null
          : PostSource.fromJson(json['post_source'] as Map<String, dynamic>),
      comments: json['comments'] == null
          ? null
          : Comments.fromJson(json['comments'] as Map<String, dynamic>),
      likes: json['likes'] == null
          ? null
          : Likes.fromJson(json['likes'] as Map<String, dynamic>),
      reposts: json['reposts'] == null
          ? null
          : Reposts.fromJson(json['reposts'] as Map<String, dynamic>),
      donut: json['donut'] == null
          ? null
          : Donut.fromJson(json['donut'] as Map<String, dynamic>),
      shortTextRate: (json['short_text_rate'] as num?)?.toDouble(),
      zoomText: json['zoom_text'] as bool?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      carouselOffset: json['carousel_offset'] as int?,
      views: json['views'] == null
          ? null
          : Views.fromJson(json['views'] as Map<String, dynamic>),
      copyHistory: (json['copy_history'] as List<dynamic>?)
          ?.map((e) => CopyHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'owner_id': instance.ownerId,
      'from_id': instance.fromId,
      'post_id': instance.postId,
      'parents_stack': instance.parentsStack,
      'post_type': instance.postType,
      'text': instance.text,
      'marked_as_ads': instance.markedAsAds,
      'post_source': instance.postSource,
      'comments': instance.comments,
      'likes': instance.likes,
      'reposts': instance.reposts,
      'donut': instance.donut,
      'short_text_rate': instance.shortTextRate,
      'zoom_text': instance.zoomText,
      'attachments': instance.attachments,
      'carousel_offset': instance.carouselOffset,
      'views': instance.views,
      'copy_history': instance.copyHistory,
    };
