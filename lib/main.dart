import 'package:flutter/material.dart';
import 'package:vk_postman/widgets/main_screen_model.dart';
import 'widgets/main_screen_page.dart';

final keyForSnackBar = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = MainScreenPageModel();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: keyForSnackBar,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainScreenPageProvider(
          child: const MainScreenPage(title: 'VK api postman'), model: model),
    );
  }
}
