import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_source.freezed.dart';
part 'post_source.g.dart';

@freezed
class PostSource with _$PostSource {
  factory PostSource({
    String? type,
  }) = _PostSource;

  factory PostSource.fromJson(Map<String, dynamic> json) =>
      _$PostSourceFromJson(json);
}
