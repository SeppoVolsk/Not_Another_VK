import 'package:freezed_annotation/freezed_annotation.dart';

part 'donut.freezed.dart';
part 'donut.g.dart';

@freezed
class Donut with _$Donut {
  factory Donut({
    @JsonKey(name: 'is_donut') bool? isDonut,
  }) = _Donut;

  factory Donut.fromJson(Map<String, dynamic> json) => _$DonutFromJson(json);
}
