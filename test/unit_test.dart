import 'package:flutter_test/flutter_test.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/domain/entities/full_original_post/photo.dart';
import 'package:vk_postman/domain/entities/full_original_post/size.dart';
import 'package:vk_postman/domain/entities/post.dart';

void main() {
  test('Проверка функции на возвращаемый тип', () {
    final result = VkApiClient().getAuthDialogLink();
    expect(result.runtimeType, String);
  });

  test('Проверка id в JSON от VK', () async {
    final result = await VkApiClient().getPosts('Тестовый запрос');
    expect(result['response']['items'][0]['id'].runtimeType, int);
  });

  final testList = [
    {
      "height": 56,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/M8dQEWm4ncW2Y8IIaAv28wLk-jmH5Ox4WU7MY7_lCHuJjdSN8S4-zIDGogEwMacBah73JU7aU19BYJ6NKQZ-elun.jpg?size=75x56&quality=95&type=album",
      "type": "s",
      "width": 75
    },
    {
      "height": 97,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album",
      "type": "m",
      "width": 130
    }
  ];

  test('Проверка функции _largeVkPhoto Map', () {
    String result = largeVkPhoto(testList);
    expect(result,
        'https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album');
  });

  test('Проверка функции largeVkPhoto OriginalPost', () {
    List<Size> testSizeArr = [];
    for (var element in testList) {
      testSizeArr.add(Size.fromJson(element));
    }

    String result = largeVkPhoto(testSizeArr);
    expect(result,
        'https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album');
  });
}
