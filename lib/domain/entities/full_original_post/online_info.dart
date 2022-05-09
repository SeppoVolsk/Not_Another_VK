import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_info.freezed.dart';
part 'online_info.g.dart';

@freezed
class OnlineInfo with _$OnlineInfo {
  factory OnlineInfo({
    bool? visible,
    @JsonKey(name: 'last_seen') int? lastSeen,
    @JsonKey(name: 'is_online') bool? isOnline,
    @JsonKey(name: 'is_mobile') bool? isMobile,
  }) = _OnlineInfo;

  factory OnlineInfo.fromJson(Map<String, dynamic> json) =>
      _$OnlineInfoFromJson(json);
}
