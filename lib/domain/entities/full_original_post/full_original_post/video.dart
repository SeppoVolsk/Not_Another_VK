import 'first_frame.dart';
import 'image.dart';

class Video {
  String? accessKey;
  int? canComment;
  int? canLike;
  int? canRepost;
  int? canSubscribe;
  int? canAddToFaves;
  int? canAdd;
  int? comments;
  int? date;
  String? description;
  int? duration;
  List<Image>? image;
  List<FirstFrame>? firstFrame;
  int? width;
  int? height;
  int? id;
  int? ownerId;
  String? title;
  String? trackCode;
  String? type;
  int? views;

  Video({
    this.accessKey,
    this.canComment,
    this.canLike,
    this.canRepost,
    this.canSubscribe,
    this.canAddToFaves,
    this.canAdd,
    this.comments,
    this.date,
    this.description,
    this.duration,
    this.image,
    this.firstFrame,
    this.width,
    this.height,
    this.id,
    this.ownerId,
    this.title,
    this.trackCode,
    this.type,
    this.views,
  });

  factory Video.fromJson(Map<String, dynamic> json) => Video(
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
        firstFrame: (json['first_frame'] as List<dynamic>?)
            ?.map((e) => FirstFrame.fromJson(e as Map<String, dynamic>))
            .toList(),
        width: json['width'] as int?,
        height: json['height'] as int?,
        id: json['id'] as int?,
        ownerId: json['owner_id'] as int?,
        title: json['title'] as String?,
        trackCode: json['track_code'] as String?,
        type: json['type'] as String?,
        views: json['views'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'access_key': accessKey,
        'can_comment': canComment,
        'can_like': canLike,
        'can_repost': canRepost,
        'can_subscribe': canSubscribe,
        'can_add_to_faves': canAddToFaves,
        'can_add': canAdd,
        'comments': comments,
        'date': date,
        'description': description,
        'duration': duration,
        'image': image?.map((e) => e.toJson()).toList(),
        'first_frame': firstFrame?.map((e) => e.toJson()).toList(),
        'width': width,
        'height': height,
        'id': id,
        'owner_id': ownerId,
        'title': title,
        'track_code': trackCode,
        'type': type,
        'views': views,
      };
}
