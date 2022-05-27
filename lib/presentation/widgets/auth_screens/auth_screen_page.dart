import 'package:flutter/material.dart';
import 'package:vk_postman/data/api_clients/vk_api_client.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthScreenPage extends StatefulWidget {
  AuthScreenPage({Key? key}) : super(key: key);

  @override
  State<AuthScreenPage> createState() => _AuthScreenPageState();
}

class _AuthScreenPageState extends State<AuthScreenPage> {
  var _a;

  @override
  void initState() {
    super.initState();
    _a = VkApiClient().openAuthDialog();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _a,
        builder: (BuildContext context, AsyncSnapshot snapshot) => WebView(
              initialUrl:
                  'https://oauth.vk.com/authorize?client_id=8097225&display=mobile&redirect_uri=https://oauth.vk.com/blank.html&scope=friends&response_type=token&v=5.131&state=123456',
            ));
  }
}
