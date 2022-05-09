import 'package:freezed_annotation/freezed_annotation.dart';

import 'response.dart';

part 'full_original_post.freezed.dart';
part 'full_original_post.g.dart';

@freezed
class FullOriginalPost with _$FullOriginalPost {
  factory FullOriginalPost({
    Response? response,
  }) = _FullOriginalPost;

  factory FullOriginalPost.fromJson(Map<String, dynamic> json) =>
      _$FullOriginalPostFromJson(json);
}
