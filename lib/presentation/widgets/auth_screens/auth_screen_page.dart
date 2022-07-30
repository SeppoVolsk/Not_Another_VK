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
  //WebViewController? _controller;
  String? _accessToken;
  late bool _isConfirmed;

  @override
  Widget build(BuildContext context) {
    _accessToken = context
        .select((AuthenticationBLoC bloc) => bloc.state.data.accessToken);
    _isConfirmed = _accessToken != null;

    return Scaffold(
        appBar: AppBar(title: Text('Вход VK')),
        body: Stack(alignment: Alignment.center, children: [
          WebView(
            initialUrl: VkApiClientMethods.authDialog().toString(),
            navigationDelegate: (NavigationRequest navigation) {
              context
                  .read<AuthenticationBLoC>()
                  .add(AuthenticationEvent.logIn(navigation));

              return NavigationDecision.navigate;
            },
          ),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.center,
                  child: ConfirmedAuthWidget(toggle: _isConfirmed))),
        ]));
  }
}

class ConfirmedAuthWidget extends StatefulWidget {
  ConfirmedAuthWidget({Key? key, required this.toggle}) : super(key: key);
  bool toggle;

  @override
  State<ConfirmedAuthWidget> createState() => _ConfirmedAuthWidgetState();
}

class _ConfirmedAuthWidgetState extends State<ConfirmedAuthWidget> {
  String? name, surName, photo;
  bool animationIsDone = false;

  @override
  Widget build(BuildContext context) {
    final userData = context.read<AuthenticationBLoC>().state.data;

    name = userData.name;
    surName = userData.surname;
    photo = userData.photo;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AnimatedContainer(
        height: widget.toggle ? 200 : 0,
        width: widget.toggle ? 200 : 0,
        duration: Duration(milliseconds: 950),
        color: Theme.of(context).primaryColor,
        child: animationIsDone
            ? Column(children: [
                Text('Вы авторизированы как: '),
                Expanded(child: Image.network(photo.toString())),
                Text('$name $surName'),
                CloseButton(
                  onPressed: () => Navigator.of(context).pop(),
                )
              ])
            : SizedBox.shrink(),
        onEnd: () => setState(() => animationIsDone = true),
      ),
    );
  }
}
