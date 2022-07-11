import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

enum _select { news, saved }

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  var _selectedTab = _select.news;
  @override
  Widget build(BuildContext context) {
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: lightTheme ? AppColors.blueGradient : AppColors.greyGradient,
      ),
      child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _selectedTab.index == 0
              ? _select.news.index
              : _select.saved.index,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.fiber_new_rounded),
              label: 'Новости',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.now_wallpaper_sharp), label: 'Сохраненные')
          ],
          onTap: (index) {
            _selectedTab.index == index
                ? null
                : setState(() {
                    index == 0
                        ? _selectedTab = _select.news
                        : _selectedTab = _select.saved;
                  });
          }),
    );
  }
}
