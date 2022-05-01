import 'dart:convert';

import 'package:collection/collection.dart';

class Size {
	int? height;
	String? url;
	String? type;
	int? width;

	Size({this.height, this.url, this.type, this.width});

	factory Size.fromFrom(Map<String, dynamic> data) => Size(
				height: data['height'] as int?,
				url: data['url'] as String?,
				type: data['type'] as String?,
				width: data['width'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'height': height,
				'url': url,
				'type': type,
				'width': width,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Size].
	factory Size.fromJson(String data) {
		return Size.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Size] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Size) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			height.hashCode ^
			url.hashCode ^
			type.hashCode ^
			width.hashCode;
}
