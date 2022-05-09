import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment.dart';
import 'post_source.dart';

part 'copy_history.freezed.dart';
part 'copy_history.g.dart';

@freezed
class CopyHistory with _$CopyHistory {
  factory CopyHistory({
    int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'from_id') int? fromId,
    int? date,
    @JsonKey(name: 'post_type') String? postType,
    String? text,
    List<Attachment>? attachments,
    @JsonKey(name: 'post_source') PostSource? postSource,
  }) = _CopyHistory;

  factory CopyHistory.fromJson(Map<String, dynamic> json) =>
      _$CopyHistoryFromJson(json);
}
