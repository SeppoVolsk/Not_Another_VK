import 'package:freezed_annotation/freezed_annotation.dart';

import 'image.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  factory Video({
    @JsonKey(name: 'access_key') String? accessKey,
    @JsonKey(name: 'can_comment') int? canComment,
    @JsonKey(name: 'can_like') int? canLike,
    @JsonKey(name: 'can_repost') int? canRepost,
    @JsonKey(name: 'can_subscribe') int? canSubscribe,
    @JsonKey(name: 'can_add_to_faves') int? canAddToFaves,
    @JsonKey(name: 'can_add') int? canAdd,
    int? comments,
    int? date,
    String? description,
    int? duration,
    List<Image>? image,
    int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    String? title,
    @JsonKey(name: 'track_code') String? trackCode,
    String? type,
    int? views,
    @JsonKey(name: 'local_views') int? localViews,
    String? platform,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
