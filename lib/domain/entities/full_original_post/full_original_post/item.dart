import 'attachment.dart';
import 'comments.dart';
import 'donut.dart';
import 'likes.dart';
import 'post_source.dart';
import 'reposts.dart';

class Item {
  int? id;
  int? date;
  int? ownerId;
  int? fromId;
  String? postType;
  String? text;
  List<Attachment>? attachments;
  PostSource? postSource;
  Comments? comments;
  Likes? likes;
  Reposts? reposts;
  Donut? donut;
  double? shortTextRate;
  int? postId;
  List<dynamic>? parentsStack;
  bool? zoomText;
  int? markedAsAds;
  int? carouselOffset;

  Item({
    this.id,
    this.date,
    this.ownerId,
    this.fromId,
    this.postType,
    this.text,
    this.attachments,
    this.postSource,
    this.comments,
    this.likes,
    this.reposts,
    this.donut,
    this.shortTextRate,
    this.postId,
    this.parentsStack,
    this.zoomText,
    this.markedAsAds,
    this.carouselOffset,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json['id'] as int?,
        date: json['date'] as int?,
        ownerId: json['owner_id'] as int?,
        fromId: json['from_id'] as int?,
        postType: json['post_type'] as String?,
        text: json['text'] as String?,
        attachments: (json['attachments'] as List<dynamic>?)
            ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
            .toList(),
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
        postId: json['post_id'] as int?,
        parentsStack: json['parents_stack'] as List<dynamic>?,
        zoomText: json['zoom_text'] as bool?,
        markedAsAds: json['marked_as_ads'] as int?,
        carouselOffset: json['carousel_offset'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'owner_id': ownerId,
        'from_id': fromId,
        'post_type': postType,
        'text': text,
        'attachments': attachments?.map((e) => e.toJson()).toList(),
        'post_source': postSource?.toJson(),
        'comments': comments?.toJson(),
        'likes': likes?.toJson(),
        'reposts': reposts?.toJson(),
        'donut': donut?.toJson(),
        'short_text_rate': shortTextRate,
        'post_id': postId,
        'parents_stack': parentsStack,
        'zoom_text': zoomText,
        'marked_as_ads': markedAsAds,
        'carousel_offset': carouselOffset,
      };
}
