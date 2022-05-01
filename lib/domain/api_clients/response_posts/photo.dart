import 'dart:convert';

import 'package:collection/collection.dart';

import 'size.dart';

class Photo {
	int? albumId;
	int? date;
	int? id;
	int? ownerId;
	String? accessKey;
	int? postId;
	List<Size>? sizes;
	String? text;
	int? userId;
	bool? hasTags;

	Photo({
		this.albumId, 
		this.date, 
		this.id, 
		this.ownerId, 
		this.accessKey, 
		this.postId, 
		this.sizes, 
		this.text, 
		this.userId, 
		this.hasTags, 
	});

	factory Photo.fromFrom(Map<String, dynamic> data) => Photo(
				albumId: data['album_id'] as int?,
				date: data['date'] as int?,
				id: data['id'] as int?,
				ownerId: data['owner_id'] as int?,
				accessKey: data['access_key'] as String?,
				postId: data['post_id'] as int?,
				sizes: (data['sizes'] as List<dynamic>?)
						?.map((e) => Size.fromFrom(e as Map<String, dynamic>))
						.toList(),
				text: data['text'] as String?,
				userId: data['user_id'] as int?,
				hasTags: data['has_tags'] as bool?,
			);

	Map<String, dynamic> toFrom() => {
				'album_id': albumId,
				'date': date,
				'id': id,
				'owner_id': ownerId,
				'access_key': accessKey,
				'post_id': postId,
				'sizes': sizes?.map((e) => e.toFrom()).toList(),
				'text': text,
				'user_id': userId,
				'has_tags': hasTags,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Photo].
	factory Photo.fromJson(String data) {
		return Photo.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Photo] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Photo) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			albumId.hashCode ^
			date.hashCode ^
			id.hashCode ^
			ownerId.hashCode ^
			accessKey.hashCode ^
			postId.hashCode ^
			sizes.hashCode ^
			text.hashCode ^
			userId.hashCode ^
			hasTags.hashCode;
}
