import 'dart:convert';

import 'package:collection/collection.dart';

import 'group.dart';
import 'item.dart';
import 'profile.dart';

class Response {
	List<Item>? items;
	List<Profile>? profiles;
	List<Group>? groups;
	String? nextFrom;
	int? count;
	int? totalCount;

	Response({
		this.items, 
		this.profiles, 
		this.groups, 
		this.nextFrom, 
		this.count, 
		this.totalCount, 
	});

	factory Response.fromFrom(Map<String, dynamic> data) => Response(
				items: (data['items'] as List<dynamic>?)
						?.map((e) => Item.fromFrom(e as Map<String, dynamic>))
						.toList(),
				profiles: (data['profiles'] as List<dynamic>?)
						?.map((e) => Profile.fromFrom(e as Map<String, dynamic>))
						.toList(),
				groups: (data['groups'] as List<dynamic>?)
						?.map((e) => Group.fromFrom(e as Map<String, dynamic>))
						.toList(),
				nextFrom: data['next_from'] as String?,
				count: data['count'] as int?,
				totalCount: data['total_count'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'items': items?.map((e) => e.toFrom()).toList(),
				'profiles': profiles?.map((e) => e.toFrom()).toList(),
				'groups': groups?.map((e) => e.toFrom()).toList(),
				'next_from': nextFrom,
				'count': count,
				'total_count': totalCount,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Response].
	factory Response.fromJson(String data) {
		return Response.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Response] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Response) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			items.hashCode ^
			profiles.hashCode ^
			groups.hashCode ^
			nextFrom.hashCode ^
			count.hashCode ^
			totalCount.hashCode;
}
