import 'dart:convert';

import 'package:collection/collection.dart';

import 'response.dart';

class ResponsePosts {
	Response? response;

	ResponsePosts({this.response});

	factory ResponsePosts.fromFrom(Map<String, dynamic> data) => ResponsePosts(
				response: data['response'] == null
						? null
						: Response.fromFrom(data['response'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toFrom() => {
				'response': response?.toFrom(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ResponsePosts].
	factory ResponsePosts.fromJson(String data) {
		return ResponsePosts.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [ResponsePosts] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! ResponsePosts) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => response.hashCode;
}
