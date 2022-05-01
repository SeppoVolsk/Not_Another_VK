import 'dart:convert';

import 'package:collection/collection.dart';

import 'online_info.dart';

class Profile {
	int? id;
	String? firstName;
	String? lastName;
	bool? canAccessClosed;
	bool? isClosed;
	int? sex;
	String? screenName;
	String? photo50;
	String? photo100;
	OnlineInfo? onlineInfo;
	int? online;
	int? onlineMobile;
	int? onlineApp;

	Profile({
		this.id, 
		this.firstName, 
		this.lastName, 
		this.canAccessClosed, 
		this.isClosed, 
		this.sex, 
		this.screenName, 
		this.photo50, 
		this.photo100, 
		this.onlineInfo, 
		this.online, 
		this.onlineMobile, 
		this.onlineApp, 
	});

	factory Profile.fromFrom(Map<String, dynamic> data) => Profile(
				id: data['id'] as int?,
				firstName: data['first_name'] as String?,
				lastName: data['last_name'] as String?,
				canAccessClosed: data['can_access_closed'] as bool?,
				isClosed: data['is_closed'] as bool?,
				sex: data['sex'] as int?,
				screenName: data['screen_name'] as String?,
				photo50: data['photo_50'] as String?,
				photo100: data['photo_100'] as String?,
				onlineInfo: data['online_info'] == null
						? null
						: OnlineInfo.fromFrom(data['online_info'] as Map<String, dynamic>),
				online: data['online'] as int?,
				onlineMobile: data['online_mobile'] as int?,
				onlineApp: data['online_app'] as int?,
			);

	Map<String, dynamic> toFrom() => {
				'id': id,
				'first_name': firstName,
				'last_name': lastName,
				'can_access_closed': canAccessClosed,
				'is_closed': isClosed,
				'sex': sex,
				'screen_name': screenName,
				'photo_50': photo50,
				'photo_100': photo100,
				'online_info': onlineInfo?.toFrom(),
				'online': online,
				'online_mobile': onlineMobile,
				'online_app': onlineApp,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Profile].
	factory Profile.fromJson(String data) {
		return Profile.fromFrom(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Profile] to a JSON string.
	String toJson() => json.encode(toFrom());

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Profile) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toFrom(), toFrom());
	}

	@override
	int get hashCode =>
			id.hashCode ^
			firstName.hashCode ^
			lastName.hashCode ^
			canAccessClosed.hashCode ^
			isClosed.hashCode ^
			sex.hashCode ^
			screenName.hashCode ^
			photo50.hashCode ^
			photo100.hashCode ^
			onlineInfo.hashCode ^
			online.hashCode ^
			onlineMobile.hashCode ^
			onlineApp.hashCode;
}
