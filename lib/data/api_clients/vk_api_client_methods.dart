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
