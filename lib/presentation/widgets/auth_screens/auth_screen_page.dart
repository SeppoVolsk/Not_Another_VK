import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthScreenPage extends StatefulWidget {
  AuthScreenPage({Key? key}) : super(key: key);

  @override
  State<AuthScreenPage> createState() => _AuthScreenPageState();
}

class _AuthScreenPageState extends State<AuthScreenPage> {
  WebViewController? _webViewController;
  String? _accessToken;

  @override
  Widget build(BuildContext context) {
    _accessToken = context
        .select((AuthenticationBLoC bloc) => bloc.state.data.accessToken);
    return Scaffold(
        appBar: AppBar(title: Text('Вход VK')),
        body: Stack(children: [
          WebView(
            initialUrl: VkApiClient().getAuthDialogLink(),
            onWebViewCreated: (WebViewController controller) {
              _webViewController = controller;
            },
            // onPageStarted: (url) {
            //   print('ON PAGE START: ' + url);
            // },
            // onPageFinished: (url) {
            //   print('ON PAGE FINISHED: ' + url);
            //   final uri = Uri.parse(url);
            //   if (uri.fragment.contains('access_code')) {
            //     _accessToken = uri.fragment.characters.toString();
            //     print('Access Token' + _accessToken.toString());
            //   }
            // },
            navigationDelegate: (NavigationRequest navigation) {
              // final redirectLink = Uri.parse(navigation.url);
              // print('DELEGATE redirectLink' + redirectLink.toString());
              // print('FRAGMENT: ' + redirectLink.fragment);
              context
                  .read<AuthenticationBLoC>()
                  .add(AuthenticationEvent.logIn(navigation));

              // final parts =
              //     Uri.decodeFull(redirectLink.toString()).replaceAll('#', '?');
              // print('PARTS: ' + parts);
              // final pureUri = Uri.parse(parts);
              // print('QUERY PARAMETERS: ' + pureUri.queryParameters.toString());

              // setState(() {
              //   _accessToken = pureUri.queryParameters['access_token'];
              // });

              // print('ACCESS TOKEN: ' + _accessToken.toString());

              return NavigationDecision.navigate;
            },
          ),
          if (_accessToken != null) ConfirmedAuthWidget(_accessToken),
        ]));
  }
}

class ConfirmedAuthWidget extends StatelessWidget {
  const ConfirmedAuthWidget(String? this.accessToken, {Key? key})
      : super(key: key);
  final String? accessToken;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text('ВАШ ТОКЕН $accessToken'),
        CloseButton(
          onPressed: () => Navigator.of(context).pop(),
        )
      ]),
    );
  }
}
