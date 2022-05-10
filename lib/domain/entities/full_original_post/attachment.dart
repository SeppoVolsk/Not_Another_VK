import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/domain/entities/full_original_post/video.dart';

import 'photo.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
class Attachment with _$Attachment {
  factory Attachment({
    String? type,
    Photo? photo,
    Video? video,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}
