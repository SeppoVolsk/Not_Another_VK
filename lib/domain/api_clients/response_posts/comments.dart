import 'dart:convert';

import 'package:collection/collection.dart';

class Comments {
	int? canPost;
	int? count;

	Comments({this.canPost, this.count});

	factory Comments.fromFrom(Map<String, dynamic> data) => Comments(
				canPost: data['can_post'] as int?,
				count: data['count'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'can_post': canPost,
				'count': count,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Comments].
	factory Comments.fromJson(String data) {
		return Comments.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Comments] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Comments) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => canPost.hashCode ^ count.hashCode;
}
