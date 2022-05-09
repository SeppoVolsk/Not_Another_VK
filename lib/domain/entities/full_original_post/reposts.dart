import 'package:freezed_annotation/freezed_annotation.dart';

part 'reposts.freezed.dart';
part 'reposts.g.dart';

@freezed
class Reposts with _$Reposts {
  factory Reposts({
    int? count,
    @JsonKey(name: 'user_reposted') int? userReposted,
  }) = _Reposts;

  factory Reposts.fromJson(Map<String, dynamic> json) =>
      _$RepostsFromJson(json);
}
