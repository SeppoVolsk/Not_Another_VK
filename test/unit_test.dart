import 'dart:convert';
import 'dart:math';
import 'package:flutter_test/flutter_test.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/data/api_clients/vk_api_client_methods.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';
import 'package:vk_postman/domain/entities/full_original_post/image.dart';
import 'package:vk_postman/domain/entities/full_original_post/size.dart';
import 'package:vk_postman/domain/entities/full_original_post/video.dart';
import 'package:vk_postman/domain/entities/post.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';

import 'example_json.dart';

void main() async {
  test('Проверка функции на возвращаемый тип', () {
    final result = VkApiClient().getAuthDialogLink();
    expect(result.runtimeType, String);
  });

  test('Проверка id в JSON от VK', () async {
    final result = await VkApiClient().getPosts('Тестовый запрос');
    expect(result['response']['items'][0]['id'].runtimeType, int);
  });

  test('Проверка метода getUserInfo', () async {
    final result = await VkApiClient().getUserInfo();
    print(result);
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
    // String result = largeVkPhoto(testList);
    //  expect(result,
    //      'https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album');
  });

  test('Проверка функции largeVkPhoto OriginalPost', () {
    List<Size> testSizeArr = [];
    for (var element in testList) {
      testSizeArr.add(Size.fromJson(element));
    }
    // String result = largeVkPhoto(testSizeArr);
    // expect(result,
    //     'https://sun9-52.userapi.com/s/v1/ig2/R01brrhBgpvV-FRYMokQ4yr4ySo_KOoIQL5xnDCeWHQdDk4FCIi1MXdnNidKFxiYs1x3qgN9nE_zIJd7njREftaZ.jpg?size=130x97&quality=95&type=album');
  });

  String largeVkPhoto(List<dynamic> sizesList) {
    bool isSize = sizesList.first is Size || sizesList.first is Image;
    List<int> photoHeights = [];
    for (var element in sizesList) {
      photoHeights.add(isSize ? element.height : element['height']);
    }
    final maxPhotoHeight = photoHeights.reduce(max);
    final result = sizesList.firstWhere((element) => isSize
        ? element.height == maxPhotoHeight
        : element['height'] == maxPhotoHeight);
    return isSize ? result.url : result['url'];
  }

  test('Проверка функции largeVkPhoto', () {
    final testObject = FullOriginalPost.fromJson(exampleJson);
    final itemList = testObject.response!.items!;
    int counter = 0;
    for (var i in itemList) {
      if (i.attachments != null) {
        for (var a in i.attachments!) {
          print(counter++);
          if (a.type == 'video') {
            print('Video:');
            print(largeVkPhoto(a.video!.image!));
          }
          if (a.type == 'photo') {
            print('Foto');
            print(largeVkPhoto(a.photo!.sizes!));
          }
          if (a.type != 'video' && a.type != 'photo') {
            print('Нет доступных медиа');
          }
        }
      }
    }
  });

  final storage = PersistentStorage();
  await storage.init();
  group('Persistent Storage tests', () {
    test('Read Write methods (T String)', () async {
      const key = 'another_key';
      const value = 'Test value for persistent storage';
      await storage.write(key: key, value: value);
      expect(storage.read(key: key), value);
    });

    test('Read Write methods json (T Map String, dynamic )', () async {
      const key = 'some_key';
      final json = testList[0];
      await storage.write(key: key, value: json);
      final jsonToString = jsonEncode(json);
      expect(storage.read(key: key), jsonToString);
    });

    test('test for keys getter', () async {
      final keys = storage.keys;
      print('storage keys getter: $keys');
    });
  });

  group('IMainScreenRepository tests', () {
    test('Init - Cached - Network chain', () async {
      final storage = PersistentStorage();
      final reposChain =
          MainScreenInitialData(MainScreenCachedData(MainScreenNetworkData()));
      final data = await reposChain.read('erty');
      print(data
        ..history
        ..newsQuery
        ..posts?.length);
    });
  });

  group('From method tests', () {
    final List<Post> post = [];
    test('From Json source test', () {
      var i = 0;
      final data = Post().from(exampleJson).listen((event) {
        i++;
        print('$i ${event.postPhoto}');
      });
      // data.cancel();
    });
    test('await for test', () async {
      await for (Post p in Post().from<Map>(exampleJson)) {
        post.add(p);
        print('${p.userId} ${p.firstName} ${p.surName}');
        print(p.userPhoto);
        // print('${p.postText}');
      }
      print('ready up');
    });
    test('Post from object ', () async {
      FullOriginalPost objectPost = FullOriginalPost.fromJson(exampleJson);
      await for (Post p in Post().from<FullOriginalPost>(objectPost)) {
        post.add(p);
        print('${p.userId} ${p.firstName} ${p.surName}');
        print(p.userPhoto);
        print(p.dateTime);
      }
    });
  });

  group('VkApiClient tests', () {
    test('get method with VkApiClientsMethods', () async {
      final apiClient = VkApiClient();
      final jsonNews =
          await apiClient.get(VkApiClientMethods.newsfeedSearch('поиск'));
      print(jsonNews['response'].keys);
      final usersGet = await apiClient.get(VkApiClientMethods.usersGet(
          '709755195',
          'vk1.a.NwAa9aFgj5pi-3BH4Oef3PDDg4I0VFbo082ecybn_lbLW2d9firjEnjqZ57x9a_onYyv9KJGyhclZ0mo3Uo6z7MviQ7ndotoVmaAbUmaNjVsFQyEayDjHrtMNGBivqsSrGMxSsdK8KtBjy-REYh06p7Sw3B3sGdiJp54seLMVa9Jr6SdwlMhjPV4JRO8uh_F'));
      print(usersGet);
    });
  });
}
