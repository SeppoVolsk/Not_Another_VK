import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  factory Group({
    int? id,
    String? name,
    @JsonKey(name: 'screen_name') String? screenName,
    @JsonKey(name: 'is_closed') int? isClosed,
    String? type,
    @JsonKey(name: 'photo_50') String? photo50,
    @JsonKey(name: 'photo_100') String? photo100,
    @JsonKey(name: 'photo_200') String? photo200,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
