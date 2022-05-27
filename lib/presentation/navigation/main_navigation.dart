import 'package:flutter/material.dart';
import 'package:vk_postman/presentation/widgets/auth_screens/auth_screen_page.dart';
import 'package:vk_postman/presentation/widgets/detail_screen/detail_screen_widget.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';

abstract class MainNavigationRoutesNames {
  //static const mainScreen = '/';
  static const detailScreen = '/detail';
  static const authScreen = '/auth';
}

class MainNavigation {
  //final initialRoute = MainNavigationRoutesNames.mainScreen;
  final authRoute = MainNavigationRoutesNames.authScreen;
  final routes = <String, Widget Function(BuildContext)>{
    //MainNavigationRoutesNames.mainScreen: (context) => MainScreenPage(),
    MainNavigationRoutesNames.detailScreen: ((context) => DetailScreenPage()),
    MainNavigationRoutesNames.authScreen: ((context) => AuthScreenPage())
  };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    settings.arguments;
  }
}
