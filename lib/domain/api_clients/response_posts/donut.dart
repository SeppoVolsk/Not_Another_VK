import 'dart:convert';

import 'package:collection/collection.dart';

class Donut {
	bool? isDonut;

	Donut({this.isDonut});

	factory Donut.fromFrom(Map<String, dynamic> data) => Donut(
				isDonut: data['is_donut'] as bool?,
			);

	Map<String, dynamic> toFrom() => {
				'is_donut': isDonut,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Donut].
	factory Donut.fromJson(String data) {
		return Donut.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Donut] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Donut) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => isDonut.hashCode;
}
