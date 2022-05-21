import 'package:flutter/material.dart';

class DetailScreenPage extends StatefulWidget {
  DetailScreenPage({Key? key}) : super(key: key);

  @override
  State<DetailScreenPage> createState() => _DetailScreenPageState();
}

class _DetailScreenPageState extends State<DetailScreenPage> {
  @override
  Widget build(BuildContext context) {
    String? url = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(appBar: AppBar(), body: Center(child: Image.network(url)));
  }
}
