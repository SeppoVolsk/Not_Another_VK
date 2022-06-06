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
    },
    {
      "height": 453,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/u6biMjBJ3X57pH3mXjQBl64Ks8Nq-G6fdmGhX7x1bk9P9DPPEMsje60vaK4QBO9qZSVI3rZShrTF-2HPbg1wHORr.jpg?size=604x453&quality=95&type=album",
      "type": "x",
      "width": 604
    },
    {
      "height": 605,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/zyi2lwcfHXaMR5zC5p9bx6xDRy7rMMn0KPNILVZgwfA1zK9Px1qD2JKeMc7Mq6-4N976EEDlvxOQcPhRCCIvk2Ph.jpg?size=807x605&quality=95&type=album",
      "type": "y",
      "width": 807
    },
    {
      "height": 750,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/GIE-eDvW4uvF3sT5FrrAcVmIfw2552L6iSsqM_eRp44vFjtqQut61LbRu1AvQqqKz75aaffwrLAHDWjuKpQb8cQI.jpg?size=1000x750&quality=95&type=album",
      "type": "z",
      "width": 1000
    },
    {
      "height": 97,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album",
      "type": "o",
      "width": 130
    },
    {
      "height": 150,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/SVBy0N77Cu9htm-TCg4NOAoiM0DvSBBwCZUjmy6vUETy9QE1BHOj29fT9JK5HdQxU4kk1PECvaLKC2BLvqN5OgGn.jpg?size=200x150&quality=95&type=album",
      "type": "p",
      "width": 200
    },
    {
      "height": 240,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/xqEK8Qa62o_QMtufNqpmrb09bScZmArezQh3ZEYyW78a0KCRFhBGpU2r4b6jFyNqnN1ZtTaeOk_w4DKw1XqcJyXD.jpg?size=320x240&quality=95&type=album",
      "type": "q",
      "width": 320
    },
    {
      "height": 382,
      "url":
          "https://sun9-52.userapi.com/s/v1/ig2/CS9BJ5O8d99qxvpwLwajHj_RWUmhz3_EpMpcPpen_vgi5FKET3fAEI6SdQFLyWKLA1QnWRQ18qpTbMQV0jXnWwXF.jpg?size=510x382&quality=95&type=album",
      "type": "r",
      "width": 510
    }
  ];

  test('Проверка функции _largeVkPhoto Map', () {
    String result = Post().largeVkPhoto(testList);
    expect(result,
        'https://sun9-52.userapi.com/s/v1/ig2/GIE-eDvW4uvF3sT5FrrAcVmIfw2552L6iSsqM_eRp44vFjtqQut61LbRu1AvQqqKz75aaffwrLAHDWjuKpQb8cQI.jpg?size=1000x750&quality=95&type=album');
  });

  test('Проверка функции largeVkPhoto OriginalPost', () {
    List<Size> testSizeArr = [];
    for (var element in testList) {
      testSizeArr.add(Size.fromJson(element));
    }

    String result = Post().largeVkPhoto(testSizeArr);
    expect(result,
        'https://sun9-52.userapi.com/s/v1/ig2/GIE-eDvW4uvF3sT5FrrAcVmIfw2552L6iSsqM_eRp44vFjtqQut61LbRu1AvQqqKz75aaffwrLAHDWjuKpQb8cQI.jpg?size=1000x750&quality=95&type=album');
  });
}
