import 'dart:convert';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// TosterID = 8097225
// Защищённый ключ XmvFyHgK9P0MQgNb0G0C
// Сервисный ключ доступа 600104d1600104d1600104d1d5607a891866001600104d10229e437a43114591ecf962f
// Получить "вечный" токен:
// https://oauth.vk.com/authorize?client_id=8097225&display=page&redirect_uri=https://oauth.vk.com/blank.html&scope=offline&response_type=token&v=5.131
//vk1.a.NwAa9aFgj5pi-3BH4Oef3PDDg4I0VFbo082ecybn_lbLW2d9firjEnjqZ57x9a_onYyv9KJGyhclZ0mo3Uo6z7MviQ7ndotoVmaAbUmaNjVsFQyEayDjHrtMNGBivqsSrGMxSsdK8KtBjy-REYh06p7Sw3B3sGdiJp54seLMVa9Jr6SdwlMhjPV4JRO8uh_F

class VkApiClient {
  final String apiAddress = 'https://api.vk.com/method';
  final String apiVer = 'v=5.131';
  final String clientCredentialsFlowToken =
      '600104d1600104d1600104d1d5607a891866001600104d10229e437a43114591ecf962f';
  static String? accessToken;
  static String? userId;
  final secureStorage = const FlutterSecureStorage();
  final client = HttpClient();

  Future<Map<String, dynamic>> get(Uri url) async {
    final request = await client.getUrl(url);
    final response = await request.close();
    print('Status Code: ${response.statusCode}');
    final jsonStrings = await response
        .transform(utf8.decoder)
        .toList(); //Ответ приходит частями. Переводим байты(цифры) в строки и создаем массив строк.
    final jsonString =
        jsonStrings.join(); //Объединяем строки из массива в одну строку
    final json = jsonDecode(jsonString); //превращаем строку в json
    return json;
  }

  void setAuthData(String? token, String? id) {
    accessToken = token;
    userId = id;
    _saveAuthDataToStorage(accessToken: accessToken, userId: userId);
  }

  Future<bool> get authDataExists async {
    await _getAuthDataFromStorage();
    return accessToken != null && userId != null ? true : false;
  }

  get clearAuthInfo async {
    await _cleanSecureStorage();
  }

  int newsCount = 200; //по умолчанию 30, максимум 200

  // Future<dynamic> getPosts(String? newsQuery) async {
  //   final url = Uri.parse(
  //       '$apiAddress/newsfeed.search?&q=$newsQuery&extended=1&count=$newsCount&$apiVer&access_token=$clientCredentialsFlowToken');
  //   final request = await client.getUrl(url);
  //   final response = await request.close();
  //   print('Status Code: ${response.statusCode}');
  //   final jsonStrings = await response
  //       .transform(utf8.decoder)
  //       .toList(); //Ответ приходит частями. Переводим байты(цифры) в строки и создаем массив строк.
  //   final jsonString =
  //       jsonStrings.join(); //Объединяем строки из массива в одну строку
  //   final json = jsonDecode(jsonString); //превращаем строку в json
  //   return json;
  // }

  // Future<dynamic> getUserInfo({String? token, String? id}) async {
  //   final url = Uri.parse(
  //       '$apiAddress/users.get?&user_ids=$id&fields=photo_50&$apiVer&access_token=$token');
  //   print(url);
  //   final request = await client.getUrl(url);
  //   final response = await request.close();
  //   print('Status Code: ${response.statusCode}');
  //   final jsonStrings = await response
  //       .transform(utf8.decoder)
  //       .toList(); //Ответ приходит частями. Переводим байты(цифры) в строки и создаем массив строк.
  //   final jsonString =
  //       jsonStrings.join(); //Объединяем строки из массива в одну строку
  //   final json = jsonDecode(jsonString); //превращаем строку в json
  //   print(json);
  //   return json;
  // }

  String getAuthDialogLink() {
    const String authAddress = 'https://oauth.vk.com/authorize';
    const String clientId = '8097225'; // Идентификатор приложения
    const String displayType = 'mobile';
    const String redirectUri = 'https://oauth.vk.com/blank.html';
    const String scope = 'offline'; //'offline' - бесконечный токен
    const String state =
        'some_arguments'; //Произвольная строка, которая будет возвращена вместе с результатом авторизации.
    //'https://oauth.vk.com/authorize?client_id=8097225&display=mobile&redirect_uri=https://oauth.vk.com/blank.html&scope=friends&response_type=token&v=5.131&state=123456',
    final url = Uri.parse(
        '$authAddress?client_id=$clientId&display=$displayType&redirect_uri=$redirectUri&scope=$scope&response_type=token&v=$apiVer&state=$state');
    return url.toString();
  }

  Future<void> _saveAuthDataToStorage(
      {String? accessToken, String? userId}) async {
    await secureStorage.write(key: 'token', value: accessToken);
    await secureStorage.write(key: 'id', value: userId);
  }

  Future<void> _getAuthDataFromStorage() async {
    accessToken = await secureStorage.read(key: 'token');
    userId = await secureStorage.read(key: 'id');
    print('Access Data received from Secure Storage: $userId $accessToken');
  }

  Future<void> _cleanSecureStorage() async {
    accessToken = null;
    userId = null;
    await secureStorage.deleteAll();
  }
}

abstract class VkApiClientMethods {
  static const apiAddress = 'https://api.vk.com/method';
  static const apiVer = 'v=5.131';
  static const clientCredentialsFlowToken =
      '600104d1600104d1600104d1d5607a891866001600104d10229e437a43114591ecf962f';
  static const newsCount = 200; //по умолчанию 30, максимум 200

  static Uri newsfeedSearch(String? newsQuery) => Uri.parse(
      '$apiAddress/newsfeed.search?&q=$newsQuery&extended=1&count=$newsCount&$apiVer&access_token=$clientCredentialsFlowToken');
  static Uri usersGet({String? id, String? token}) => Uri.parse(
      '$apiAddress/users.get?&user_ids=$id&fields=photo_50&$apiVer&access_token=$token');

  static Uri authDialog() {
    const String authAddress = 'https://oauth.vk.com/authorize';
    const String clientId = '8097225'; // Идентификатор приложения
    const String displayType = 'mobile';
    const String redirectUri = 'https://oauth.vk.com/blank.html';
    const String scope = 'offline'; //'offline' - бесконечный токен
    const String state =
        'some_arguments'; //Произвольная строка, которая будет возвращена вместе с результатом авторизации.
    //'https://oauth.vk.com/authorize?client_id=8097225&display=mobile&redirect_uri=https://oauth.vk.com/blank.html&scope=friends&response_type=token&v=5.131&state=123456',
    return Uri.parse(
        '$authAddress?client_id=$clientId&display=$displayType&redirect_uri=$redirectUri&scope=$scope&response_type=token&v=$apiVer&state=$state');
  }
}
