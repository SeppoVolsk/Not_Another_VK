import 'package:freezed_annotation/freezed_annotation.dart';

import 'group.dart';
import 'item.dart';
import 'profile.dart';

part 'response.freezed.dart';
part 'response.g.dart';

@freezed
class Response with _$Response {
  factory Response({
    List<Item>? items,
    List<Profile>? profiles,
    List<Group>? groups,
    @JsonKey(name: 'next_from') String? nextFrom,
    int? count,
    @JsonKey(name: 'total_count') int? totalCount,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
