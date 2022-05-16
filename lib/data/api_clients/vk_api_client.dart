import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'package:vk_postman/domain/api_clients/response_posts/response_posts.dart';

enum ExceptionType { noNetwork, failedLoad }

class VkApiClientException implements Exception {
  final ExceptionType errorType;
  VkApiClientException(this.errorType);
}

// TosterID = 8097225
// Защищённый ключ XmvFyHgK9P0MQgNb0G0C
// Сервисный ключ доступа 600104d1600104d1600104d1d5607a891866001600104d10229e437a43114591ecf962f
// Получить "вечный" токен:
// https://oauth.vk.com/authorize?client_id=8097225&display=page&redirect_uri=https://oauth.vk.com/blank.html&scope=offline&response_type=token&v=5.131

class VkApiClient {
  final String apiAddress = 'https://api.vk.com/method';
  final String apiVer = 'v=5.131';
  final String clientCredentialsFlowToken =
      '600104d1600104d1600104d1d5607a891866001600104d10229e437a43114591ecf962f';
  //final int totalVkUsers = 45000000;
  int userId = 0;

  final client = HttpClient();
  int newsCount = 10; //по умолчанию 30, максимум 200

  Future<dynamic> getPosts(String? newsQuery) async {
    final url = Uri.parse(
        '$apiAddress/newsfeed.search?&q=$newsQuery&extended=1&count=$newsCount&$apiVer&access_token=$clientCredentialsFlowToken');
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response
        .transform(utf8.decoder)
        .toList(); //Ответ приходит частями. Переводим байты(цифры) в строки и создаем массив строк.
    final jsonString =
        jsonStrings.join(); //Объединяем строки из массива в одну строку
    final json = jsonDecode(jsonString); //превращаем строку в json

    return json;
  }
}
