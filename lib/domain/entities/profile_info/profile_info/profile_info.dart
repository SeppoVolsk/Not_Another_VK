import 'package:freezed_annotation/freezed_annotation.dart';

import 'response.dart';

part 'profile_info.freezed.dart';
part 'profile_info.g.dart';

@freezed
class ProfileInfo with _$ProfileInfo {
  factory ProfileInfo({
    List<Response>? response,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}
