import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/data/data_providers/history_data_provider.dart';
import 'package:vk_postman/domain/entities/post.dart';

part 'mainscreenentity.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MainScreenEntity with _$MainScreenEntity {
  const factory MainScreenEntity({
    List<Post>? posts,
    HistoryDataProvider? history,
    String? newsQuery,
  }) = _MainScreenEntity;
}
