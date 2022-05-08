import 'video.dart';

class Attachment {
  String? type;
  Video? video;

  Attachment({this.type, this.video});

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
        type: json['type'] as String?,
        video: json['video'] == null
            ? null
            : Video.fromJson(json['video'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'video': video?.toJson(),
      };
}
