class Likes {
  int? canLike;
  int? count;
  int? userLikes;
  int? canPublish;

  Likes({this.canLike, this.count, this.userLikes, this.canPublish});

  factory Likes.fromJson(Map<String, dynamic> json) => Likes(
        canLike: json['can_like'] as int?,
        count: json['count'] as int?,
        userLikes: json['user_likes'] as int?,
        canPublish: json['can_publish'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'can_like': canLike,
        'count': count,
        'user_likes': userLikes,
        'can_publish': canPublish,
      };
}
