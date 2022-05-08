class Group {
  int? id;
  String? name;
  String? screenName;
  int? isClosed;
  String? type;
  String? photo50;
  String? photo100;
  String? photo200;

  Group({
    this.id,
    this.name,
    this.screenName,
    this.isClosed,
    this.type,
    this.photo50,
    this.photo100,
    this.photo200,
  });

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        id: json['id'] as int?,
        name: json['name'] as String?,
        screenName: json['screen_name'] as String?,
        isClosed: json['is_closed'] as int?,
        type: json['type'] as String?,
        photo50: json['photo_50'] as String?,
        photo100: json['photo_100'] as String?,
        photo200: json['photo_200'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'screen_name': screenName,
        'is_closed': isClosed,
        'type': type,
        'photo_50': photo50,
        'photo_100': photo100,
        'photo_200': photo200,
      };
}
