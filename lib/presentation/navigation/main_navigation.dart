import 'package:flutter/material.dart';
import 'package:vk_postman/presentation/widgets/detail_screen/detail_screen_widget.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';

abstract class MainNavigationRoutesNames {
  //static const mainScreen = '/';
  static const detailScreen = '/detail';
}

class MainNavigation {
  //final initialRoute = MainNavigationRoutesNames.mainScreen;
  final routes = <String, Widget Function(BuildContext)>{
    //MainNavigationRoutesNames.mainScreen: (context) => MainScreenPage(),
    MainNavigationRoutesNames.detailScreen: ((context) => DetailScreenPage())
  };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    settings.arguments;
  }
}
