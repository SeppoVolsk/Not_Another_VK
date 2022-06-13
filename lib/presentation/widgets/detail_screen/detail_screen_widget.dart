import 'package:flutter/material.dart';

import 'package:vk_postman/data/files_manager.dart';

class DetailScreenPage extends StatefulWidget {
  DetailScreenPage({Key? key}) : super(key: key);

  @override
  State<DetailScreenPage> createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  final fileManager = FileManager();

  @override
  Widget build(BuildContext context) {
    String? url = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.save_alt),
                onPressed: () async {
                  final readyFile = await fileManager.urlToFile(url);
                }),
          ],
        ),
        body: Center(child: Image.network(url)));
  }
}
