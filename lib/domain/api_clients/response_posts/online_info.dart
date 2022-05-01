import 'dart:convert';

import 'package:collection/collection.dart';

class OnlineInfo {
	bool? visible;
	int? lastSeen;
	bool? isOnline;
	int? appId;
	bool? isMobile;

	OnlineInfo({
		this.visible, 
		this.lastSeen, 
		this.isOnline, 
		this.appId, 
		this.isMobile, 
	});

	factory OnlineInfo.fromFrom(Map<String, dynamic> data) => OnlineInfo(
				visible: data['visible'] as bool?,
				lastSeen: data['last_seen'] as int?,
				isOnline: data['is_online'] as bool?,
				appId: data['app_id'] as int?,
				isMobile: data['is_mobile'] as bool?,
			);

	Map<String, dynamic> toFrom() => {
				'visible': visible,
				'last_seen': lastSeen,
				'is_online': isOnline,
				'app_id': appId,
				'is_mobile': isMobile,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [OnlineInfo].
	factory OnlineInfo.fromJson(String data) {
		return OnlineInfo.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [OnlineInfo] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! OnlineInfo) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			visible.hashCode ^
			lastSeen.hashCode ^
			isOnline.hashCode ^
			appId.hashCode ^
			isMobile.hashCode;
}
