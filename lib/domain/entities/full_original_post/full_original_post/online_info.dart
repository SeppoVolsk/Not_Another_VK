class OnlineInfo {
  bool? visible;
  int? lastSeen;
  bool? isOnline;
  int? appId;
  bool? isMobile;

  OnlineInfo({
    this.visible,
    this.lastSeen,
    this.isOnline,
    this.appId,
    this.isMobile,
  });

  factory OnlineInfo.fromJson(Map<String, dynamic> json) => OnlineInfo(
        visible: json['visible'] as bool?,
        lastSeen: json['last_seen'] as int?,
        isOnline: json['is_online'] as bool?,
        appId: json['app_id'] as int?,
        isMobile: json['is_mobile'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'visible': visible,
        'last_seen': lastSeen,
        'is_online': isOnline,
        'app_id': appId,
        'is_mobile': isMobile,
      };
}
