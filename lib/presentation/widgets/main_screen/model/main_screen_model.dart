import 'package:flutter/cupertino.dart';

enum select { news, saved }

class MainScreenModel extends ChangeNotifier {
  var MainScreenIndex = select.news;

  void switchIndex() {
    MainScreenIndex =
        MainScreenIndex == select.news ? select.saved : select.news;
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
