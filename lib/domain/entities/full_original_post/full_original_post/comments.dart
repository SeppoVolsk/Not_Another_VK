class Comments {
  int? canPost;
  int? count;
  bool? groupsCanPost;

  Comments({this.canPost, this.count, this.groupsCanPost});

  factory Comments.fromJson(Map<String, dynamic> json) => Comments(
        canPost: json['can_post'] as int?,
        count: json['count'] as int?,
        groupsCanPost: json['groups_can_post'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'can_post': canPost,
        'count': count,
        'groups_can_post': groupsCanPost,
      };
}
