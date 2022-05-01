import 'dart:convert';

import 'package:collection/collection.dart';

class Group {
	int? id;
	String? name;
	String? screenName;
	int? isClosed;
	String? type;
	String? photo50;
	String? photo100;
	String? photo200;

	Group({
		this.id, 
		this.name, 
		this.screenName, 
		this.isClosed, 
		this.type, 
		this.photo50, 
		this.photo100, 
		this.photo200, 
	});

	factory Group.fromFrom(Map<String, dynamic> data) => Group(
				id: data['id'] as int?,
				name: data['name'] as String?,
				screenName: data['screen_name'] as String?,
				isClosed: data['is_closed'] as int?,
				type: data['type'] as String?,
				photo50: data['photo_50'] as String?,
				photo100: data['photo_100'] as String?,
				photo200: data['photo_200'] as String?,
			);

	Map<String, dynamic> toFrom() => {
				'id': id,
				'name': name,
				'screen_name': screenName,
				'is_closed': isClosed,
				'type': type,
				'photo_50': photo50,
				'photo_100': photo100,
				'photo_200': photo200,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Group].
	factory Group.fromJson(String data) {
		return Group.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Group] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Group) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			id.hashCode ^
			name.hashCode ^
			screenName.hashCode ^
			isClosed.hashCode ^
			type.hashCode ^
			photo50.hashCode ^
			photo100.hashCode ^
			photo200.hashCode;
}
