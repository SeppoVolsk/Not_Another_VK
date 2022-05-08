class Reposts {
  int? count;
  int? userReposted;

  Reposts({this.count, this.userReposted});

  factory Reposts.fromJson(Map<String, dynamic> json) => Reposts(
        count: json['count'] as int?,
        userReposted: json['user_reposted'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'count': count,
        'user_reposted': userReposted,
      };
}
