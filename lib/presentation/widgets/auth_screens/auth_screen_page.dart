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

  @override
  Widget build(BuildContext context) {
    _accessToken = context
        .select((AuthenticationBLoC bloc) => bloc.state.data.accessToken);

    return Scaffold(
        appBar: AppBar(title: Text('Вход VK')),
        body: Center(
          child: Stack(children: [
            WebView(
              initialUrl: VkApiClientMethods.authDialog().toString(),
              navigationDelegate: (NavigationRequest navigation) {
                context
                    .read<AuthenticationBLoC>()
                    .add(AuthenticationEvent.logIn(navigation));

                return NavigationDecision.navigate;
              },
            ),
            if (_accessToken != null) ConfirmedAuthWidget(),
          ]),
        ));
  }
}

class ConfirmedAuthWidget extends StatelessWidget {
  ConfirmedAuthWidget({Key? key}) : super(key: key);
  String? name, surName, photo;

  @override
  Widget build(BuildContext context) {
    final userData = context.read<AuthenticationBLoC>().state.data;
    name = userData.name;
    surName = userData.surname;
    photo = userData.photo;
    return Center(
      child: ColoredBox(
        color: Theme.of(context).primaryColor,
        child: Column(children: [
          Text('Вы авторизированы как: '),
          Image.network(photo.toString()),
          Text('$name $surName'),
          CloseButton(
            onPressed: () => Navigator.of(context).pop(),
          )
        ]),
      ),
    );
  }
}
