import 'dart:convert';

import 'package:collection/collection.dart';

class Views {
	int? count;

	Views({this.count});

	factory Views.fromFrom(Map<String, dynamic> data) => Views(
				count: data['count'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'count': count,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Views].
	factory Views.fromJson(String data) {
		return Views.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Views] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Views) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => count.hashCode;
}
