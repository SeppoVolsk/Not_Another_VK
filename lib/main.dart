import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/domain/entities/full_original_post/full_original_post.dart';

import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';

final keyForSnackBar = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final model = MainScreenPageModel();
    // var a = FullOriginalPost();
    // a.response?.items?[0].attachments?.;

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: keyForSnackBar,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: BlocProvider<PostsBloc>(
        create: ((_) => PostsBloc()..add(PostsLoadFromStorage())),
        child: const MainScreenPage(title: 'VK api postman'),
      ),
    );
  }
}
