import 'package:freezed_annotation/freezed_annotation.dart';

import 'size.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    @JsonKey(name: 'album_id') int? albumId,
    int? date,
    int? id,
    @JsonKey(name: 'owner_id') int? ownerId,
    @JsonKey(name: 'access_key') String? accessKey,
    double? lat,
    double? long,
    @JsonKey(name: 'post_id') int? postId,
    List<Size>? sizes,
    String? text,
    @JsonKey(name: 'has_tags') bool? hasTags,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
