import 'package:freezed_annotation/freezed_annotation.dart';

part 'views.freezed.dart';
part 'views.g.dart';

@freezed
class Views with _$Views {
  factory Views({
    int? count,
  }) = _Views;

  factory Views.fromJson(Map<String, dynamic> json) => _$ViewsFromJson(json);
}
