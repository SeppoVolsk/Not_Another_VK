import 'dart:convert';

import 'package:collection/collection.dart';

import 'attachment.dart';
import 'comments.dart';
import 'donut.dart';
import 'likes.dart';
import 'post_source.dart';
import 'reposts.dart';
import 'views.dart';

class Item {
	int? id;
	int? date;
	int? ownerId;
	int? fromId;
	int? postId;
	List<dynamic>? parentsStack;
	String? postType;
	String? text;
	int? markedAsAds;
	PostSource? postSource;
	Comments? comments;
	Likes? likes;
	Reposts? reposts;
	Donut? donut;
	double? shortTextRate;
	List<Attachment>? attachments;
	Views? views;
	bool? zoomText;
	int? carouselOffset;
	int? signerId;

	Item({
		this.id, 
		this.date, 
		this.ownerId, 
		this.fromId, 
		this.postId, 
		this.parentsStack, 
		this.postType, 
		this.text, 
		this.markedAsAds, 
		this.postSource, 
		this.comments, 
		this.likes, 
		this.reposts, 
		this.donut, 
		this.shortTextRate, 
		this.attachments, 
		this.views, 
		this.zoomText, 
		this.carouselOffset, 
		this.signerId, 
	});

	factory Item.fromFrom(Map<String, dynamic> data) => Item(
				id: data['id'] as int?,
				date: data['date'] as int?,
				ownerId: data['owner_id'] as int?,
				fromId: data['from_id'] as int?,
				postId: data['post_id'] as int?,
				parentsStack: data['parents_stack'] as List<dynamic>?,
				postType: data['post_type'] as String?,
				text: data['text'] as String?,
				markedAsAds: data['marked_as_ads'] as int?,
				postSource: data['post_source'] == null
						? null
						: PostSource.fromFrom(data['post_source'] as Map<String, dynamic>),
				comments: data['comments'] == null
						? null
						: Comments.fromFrom(data['comments'] as Map<String, dynamic>),
				likes: data['likes'] == null
						? null
						: Likes.fromFrom(data['likes'] as Map<String, dynamic>),
				reposts: data['reposts'] == null
						? null
						: Reposts.fromFrom(data['reposts'] as Map<String, dynamic>),
				donut: data['donut'] == null
						? null
						: Donut.fromFrom(data['donut'] as Map<String, dynamic>),
				shortTextRate: (data['short_text_rate'] as num?)?.toDouble(),
				attachments: (data['attachments'] as List<dynamic>?)
						?.map((e) => Attachment.fromFrom(e as Map<String, dynamic>))
						.toList(),
				views: data['views'] == null
						? null
						: Views.fromFrom(data['views'] as Map<String, dynamic>),
				zoomText: data['zoom_text'] as bool?,
				carouselOffset: data['carousel_offset'] as int?,
				signerId: data['signer_id'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'id': id,
				'date': date,
				'owner_id': ownerId,
				'from_id': fromId,
				'post_id': postId,
				'parents_stack': parentsStack,
				'post_type': postType,
				'text': text,
				'marked_as_ads': markedAsAds,
				'post_source': postSource?.toFrom(),
				'comments': comments?.toFrom(),
				'likes': likes?.toFrom(),
				'reposts': reposts?.toFrom(),
				'donut': donut?.toFrom(),
				'short_text_rate': shortTextRate,
				'attachments': attachments?.map((e) => e.toFrom()).toList(),
				'views': views?.toFrom(),
				'zoom_text': zoomText,
				'carousel_offset': carouselOffset,
				'signer_id': signerId,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
	factory Item.fromJson(String data) {
		return Item.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Item) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			id.hashCode ^
			date.hashCode ^
			ownerId.hashCode ^
			fromId.hashCode ^
			postId.hashCode ^
			parentsStack.hashCode ^
			postType.hashCode ^
			text.hashCode ^
			markedAsAds.hashCode ^
			postSource.hashCode ^
			comments.hashCode ^
			likes.hashCode ^
			reposts.hashCode ^
			donut.hashCode ^
			shortTextRate.hashCode ^
			attachments.hashCode ^
			views.hashCode ^
			zoomText.hashCode ^
			carouselOffset.hashCode ^
			signerId.hashCode;
}
