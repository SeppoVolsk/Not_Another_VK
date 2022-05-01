import 'dart:convert';

import 'package:collection/collection.dart';

class Likes {
	int? canLike;
	int? count;
	int? userLikes;
	int? canPublish;

	Likes({this.canLike, this.count, this.userLikes, this.canPublish});

	factory Likes.fromFrom(Map<String, dynamic> data) => Likes(
				canLike: data['can_like'] as int?,
				count: data['count'] as int?,
				userLikes: data['user_likes'] as int?,
				canPublish: data['can_publish'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'can_like': canLike,
				'count': count,
				'user_likes': userLikes,
				'can_publish': canPublish,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Likes].
	factory Likes.fromJson(String data) {
		return Likes.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Likes] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Likes) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			canLike.hashCode ^
			count.hashCode ^
			userLikes.hashCode ^
			canPublish.hashCode;
}
