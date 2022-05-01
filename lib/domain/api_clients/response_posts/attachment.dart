import 'dart:convert';

import 'package:collection/collection.dart';

import 'photo.dart';

class Attachment {
	String? type;
	Photo? photo;

	Attachment({this.type, this.photo});

	factory Attachment.fromFrom(Map<String, dynamic> data) => Attachment(
				type: data['type'] as String?,
				photo: data['photo'] == null
						? null
						: Photo.fromFrom(data['photo'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toFrom() => {
				'type': type,
				'photo': photo?.toFrom(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Attachment].
	factory Attachment.fromJson(String data) {
		return Attachment.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Attachment] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Attachment) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode => type.hashCode ^ photo.hashCode;
}
