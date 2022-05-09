import 'package:freezed_annotation/freezed_annotation.dart';

part 'likes.freezed.dart';
part 'likes.g.dart';

@freezed
class Likes with _$Likes {
  factory Likes({
    @JsonKey(name: 'can_like') int? canLike,
    int? count,
    @JsonKey(name: 'user_likes') int? userLikes,
    @JsonKey(name: 'can_publish') int? canPublish,
  }) = _Likes;

  factory Likes.fromJson(Map<String, dynamic> json) => _$LikesFromJson(json);
}
