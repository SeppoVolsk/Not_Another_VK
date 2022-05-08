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

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
        profiles: (json['profiles'] as List<dynamic>?)
            ?.map((e) => Profile.fromJson(e as Map<String, dynamic>))
            .toList(),
        groups: (json['groups'] as List<dynamic>?)
            ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
            .toList(),
        nextFrom: json['next_from'] as String?,
        count: json['count'] as int?,
        totalCount: json['total_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
        'profiles': profiles?.map((e) => e.toJson()).toList(),
        'groups': groups?.map((e) => e.toJson()).toList(),
        'next_from': nextFrom,
        'count': count,
        'total_count': totalCount,
      };
}
