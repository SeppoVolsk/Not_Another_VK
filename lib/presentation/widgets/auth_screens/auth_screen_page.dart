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
            navigationDelegate: (NavigationRequest navigation) {
              context
                  .read<AuthenticationBLoC>()
                  .add(AuthenticationEvent.logIn(navigation));

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
