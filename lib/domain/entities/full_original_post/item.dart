import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment.dart';
import 'comments.dart';
import 'copy_history.dart';
import 'donut.dart';
import 'likes.dart';
import 'post_source.dart';
import 'reposts.dart';
import 'views.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    int? id,
    int? date,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'from_id') int? fromId,
    @JsonKey(name: 'post_id') int? postId,
    @JsonKey(name: 'parents_stack') List<dynamic>? parentsStack,
    @JsonKey(name: 'post_type') String? postType,
    String? text,
    @JsonKey(name: 'marked_as_ads') int? markedAsAds,
    @JsonKey(name: 'post_source') PostSource? postSource,
    Comments? comments,
    Likes? likes,
    Reposts? reposts,
    Donut? donut,
    @JsonKey(name: 'short_text_rate') double? shortTextRate,
    @JsonKey(name: 'zoom_text') bool? zoomText,
    List<Attachment>? attachments,
    @JsonKey(name: 'carousel_offset') int? carouselOffset,
    Views? views,
    @JsonKey(name: 'copy_history') List<CopyHistory>? copyHistory,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
