import 'dart:convert';

import 'package:collection/collection.dart';

class Reposts {
	int? count;
	int? userReposted;

	Reposts({this.count, this.userReposted});

	factory Reposts.fromFrom(Map<String, dynamic> data) => Reposts(
				count: data['count'] as int?,
				userReposted: data['user_reposted'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'count': count,
				'user_reposted': userReposted,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Reposts].
	factory Reposts.fromJson(String data) {
		return Reposts.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Reposts] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Reposts) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => count.hashCode ^ userReposted.hashCode;
}
