import 'package:flutter/cupertino.dart';

enum selectMenu { news, saved }

class MainScreenModel extends ChangeNotifier {
  var mainScreenIndex = selectMenu.news;

  void switchIndex() {
    mainScreenIndex =
        mainScreenIndex == selectMenu.news ? selectMenu.saved : selectMenu.news;
    notifyListeners();
  }
}

class MainScreenProvider extends InheritedNotifier<MainScreenModel> {
  final MainScreenModel? model;
  const MainScreenProvider({this.model, Key? key, required Widget child})
      : super(key: key, child: child, notifier: model);

  static MainScreenProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MainScreenProvider>();
}
