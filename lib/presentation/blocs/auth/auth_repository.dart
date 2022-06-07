import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/presentation/blocs/auth/authenticationentity.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IAuthenticationRepository {
  AuthenticationEntity logInRepFunc({required NavigationRequest navigation}) {
    final redirectLink = Uri.parse(navigation.url);
    if (redirectLink.fragment.contains('error')) {
      print('Ошибка авторизации $redirectLink');
      return AuthenticationEntity(accessToken: null);
    }

    final parts = Uri.decodeFull(redirectLink.toString()).replaceAll('#', '?');
    final pureUri = Uri.parse(parts);
    print('QUERY PARAMETERS: ' + pureUri.queryParameters.toString());
    final _accessToken = pureUri.queryParameters['access_token'];
    final _userId = pureUri.queryParameters['user_id'];
    print('ACCESS TOKEN: ' + _accessToken.toString());
    print('USER ID: $_userId');

    return AuthenticationEntity(accessToken: _accessToken, userId: _userId);
  }

  AuthenticationEntity logOutRepFunc() {
    VkApiClient().clearTokenInfo;
    return AuthenticationEntity();
  }

  Future<AuthenticationEntity> checkAuthRepFunc() async {
    return await VkApiClient().authDataExists
        ? AuthenticationEntity(
            accessToken: VkApiClient.accessToken, userId: VkApiClient.userId)
        : AuthenticationEntity();
  }
}
