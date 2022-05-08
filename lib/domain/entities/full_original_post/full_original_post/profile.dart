import 'online_info.dart';

class Profile {
  int? id;
  String? firstName;
  String? lastName;
  bool? canAccessClosed;
  bool? isClosed;
  int? sex;
  String? screenName;
  String? photo50;
  String? photo100;
  OnlineInfo? onlineInfo;
  int? online;
  int? onlineMobile;
  int? onlineApp;

  Profile({
    this.id,
    this.firstName,
    this.lastName,
    this.canAccessClosed,
    this.isClosed,
    this.sex,
    this.screenName,
    this.photo50,
    this.photo100,
    this.onlineInfo,
    this.online,
    this.onlineMobile,
    this.onlineApp,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json['id'] as int?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        canAccessClosed: json['can_access_closed'] as bool?,
        isClosed: json['is_closed'] as bool?,
        sex: json['sex'] as int?,
        screenName: json['screen_name'] as String?,
        photo50: json['photo_50'] as String?,
        photo100: json['photo_100'] as String?,
        onlineInfo: json['online_info'] == null
            ? null
            : OnlineInfo.fromJson(json['online_info'] as Map<String, dynamic>),
        online: json['online'] as int?,
        onlineMobile: json['online_mobile'] as int?,
        onlineApp: json['online_app'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'can_access_closed': canAccessClosed,
        'is_closed': isClosed,
        'sex': sex,
        'screen_name': screenName,
        'photo_50': photo50,
        'photo_100': photo100,
        'online_info': onlineInfo?.toJson(),
        'online': online,
        'online_mobile': onlineMobile,
        'online_app': onlineApp,
      };
}
