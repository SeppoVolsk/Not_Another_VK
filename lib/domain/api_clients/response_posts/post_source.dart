import 'dart:convert';

import 'package:collection/collection.dart';

class PostSource {
	String? type;

	PostSource({this.type});

	factory PostSource.fromFrom(Map<String, dynamic> data) => PostSource(
				type: data['type'] as String?,
			);

	Map<String, dynamic> toFrom() => {
				'type': type,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostSource].
	factory PostSource.fromJson(String data) {
		return PostSource.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [PostSource] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! PostSource) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => type.hashCode;
}
