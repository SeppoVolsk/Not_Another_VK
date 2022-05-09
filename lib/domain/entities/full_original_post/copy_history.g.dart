// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CopyHistory _$$_CopyHistoryFromJson(Map<String, dynamic> json) =>
    _$_CopyHistory(
      id: json['id'] as int?,
      ownerId: json['owner_id'] as int?,
      fromId: json['from_id'] as int?,
      date: json['date'] as int?,
      postType: json['post_type'] as String?,
      text: json['text'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      postSource: json['post_source'] == null
          ? null
          : PostSource.fromJson(json['post_source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CopyHistoryToJson(_$_CopyHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'from_id': instance.fromId,
      'date': instance.date,
      'post_type': instance.postType,
      'text': instance.text,
      'attachments': instance.attachments,
      'post_source': instance.postSource,
    };
