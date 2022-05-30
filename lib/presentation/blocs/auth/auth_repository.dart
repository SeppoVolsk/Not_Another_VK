import 'package:vk_postman/presentation/blocs/auth/authenticationentity.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IAuthenticationRepository {
  AuthenticationEntity logInRepFunc({required NavigationRequest navigation}) {
    final redirectLink = Uri.parse(navigation.url);

    // print('DELEGATE redirectLink' + redirectLink.toString());
    // print('FRAGMENT: ' + redirectLink.fragment);

    final parts = Uri.decodeFull(redirectLink.toString()).replaceAll('#', '?');
    // print('PARTS: ' + parts);
    final pureUri = Uri.parse(parts);
    print('QUERY PARAMETERS: ' + pureUri.queryParameters.toString());

    final _accessToken = pureUri.queryParameters['access_token'];

    print('ACCESS TOKEN: ' + _accessToken.toString());
    return AuthenticationEntity(accessToken: _accessToken);
  }

  AuthenticationEntity logOutRepFunc() {
    return AuthenticationEntity();
  }
}
