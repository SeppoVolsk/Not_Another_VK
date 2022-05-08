class PostSource {
  String? platform;
  String? type;

  PostSource({this.platform, this.type});

  factory PostSource.fromJson(Map<String, dynamic> json) => PostSource(
        platform: json['platform'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'platform': platform,
        'type': type,
      };
}
