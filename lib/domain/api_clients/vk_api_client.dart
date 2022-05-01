import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:vk_postman/domain/api_clients/response_posts/response_posts.dart';

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
  final int totalVkUsers = 45000000;
  int userId = 0;

  final client = HttpClient();
  int newsCount = 200; //по умолчанию 30, максимум 200

  Future<dynamic> getPosts(String newsQuery) async {
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

    //final allPosts = ResponsePosts.fromJson(jsonString);

/*
    final readedPost = <Post>[];
    int _userId;
    String? _postText;
    String? _firstName;
    String? _surName;
    String? _userPhoto;
    List<String?> _postPhoto = [];
    List<dynamic> _profilesList = json['response']['profiles'];
    List<dynamic> _groupsList = json['response']['groups'];
    List<dynamic> _itemsList = json['response']['items'];
    List<dynamic> _attachmentsList;

    bool _postContainsMedia;

    try {
      for (int index = 0; index < newsCount; index++) {
        _userId = _itemsList[index]['from_id'];
        _postText = _itemsList[index]['text'];
        if (_userId > 0) {
          for (int indexProfile = 0;
              indexProfile < _profilesList.length;
              indexProfile++) {
            if (_profilesList[indexProfile]['id'] == _userId) {
              _firstName = _profilesList[indexProfile]['first_name'];
              _surName = _profilesList[indexProfile]['last_name'];
              _userPhoto = _profilesList[indexProfile]['photo_50'];
              break;
            }
          }
        } else {
          for (int indexGroup = 0;
              indexGroup < _groupsList.length;
              indexGroup++) {
            if (_groupsList[indexGroup]['id'] == (_userId).abs()) {
              _firstName = _groupsList[indexGroup]['name'];
              _surName = _groupsList[indexGroup]['screen_name'];
              _userPhoto = _groupsList[indexGroup]['photo_50'];
              break;
            }
          }
        }
        _postContainsMedia = _itemsList[index].containsKey('attachments');
        if (_postContainsMedia) {
          _attachmentsList = _itemsList[index]['attachments'];
          _postPhoto.clear();
          for (int attIndex = 0;
              attIndex < _attachmentsList.length;
              attIndex++) {
            switch (_attachmentsList[attIndex]['type']) {
              case 'video':
                {
                  _postPhoto.add(
                      _attachmentsList[attIndex]['video']['image'][0]['url']);
                }
                break;
              case 'photo':
                {
                  _postPhoto.add(
                      _attachmentsList[attIndex]['photo']['sizes'][0]['url']);
                }
                break;
              case 'link':
                {
                  _postPhoto.add(null);
                }
                break;
              case 'audio':
                {
                  _postPhoto.add(null);
                }
                break;
              default:
                {
                  _postPhoto.add(null);
                }
                break;
            }
          }
        } else {
          _postPhoto.clear();
          _postPhoto.add(null);
        }
        readedPost.add(
          Post(
              userId: _userId,
              firstName: _firstName,
              surName: _surName,
              userPhoto: _userPhoto,
              postText: _postText,
              postPhoto:
                  List.generate(_postPhoto.length, (ind) => _postPhoto[ind])),
        );
      }
    } on SocketException {
      throw VkApiClientException(ExceptionType.noNetwork);
    } catch (e) {
      if (readedPost.isNotEmpty) return readedPost;
      print('Другая ошибка: $e');
      throw VkApiClientException(ExceptionType.failedLoad);
    }
    */
    return json;
  }
}
