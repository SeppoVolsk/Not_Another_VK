import 'package:freezed_annotation/freezed_annotation.dart';

import 'online_info.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    int? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'can_access_closed') bool? canAccessClosed,
    @JsonKey(name: 'is_closed') bool? isClosed,
    int? sex,
    @JsonKey(name: 'screen_name') String? screenName,
    @JsonKey(name: 'photo_50') String? photo50,
    @JsonKey(name: 'photo_100') String? photo100,
    @JsonKey(name: 'online_info') OnlineInfo? onlineInfo,
    int? online,
    @JsonKey(name: 'online_mobile') int? onlineMobile,
    @JsonKey(name: 'online_app') int? onlineApp,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
