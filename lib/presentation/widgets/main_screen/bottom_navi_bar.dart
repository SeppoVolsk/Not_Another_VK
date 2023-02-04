import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';
import 'package:vk_postman/presentation/widgets/main_screen/model/main_screen_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    final model = MainScreenProvider.of(context)?.model;
    final _selectedTab = model?.mainScreenIndex;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: lightTheme ? AppColors.blueGradient : AppColors.greyGradient,
      ),
      child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _selectedTab!.index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.fiber_new_rounded),
              label: AppLocalizations.of(context)?.news,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.now_wallpaper_sharp),
                label: AppLocalizations.of(context)?.saved)
          ],
          onTap: (index) {
            _selectedTab.index == index
                ? null
                : setState(() {
                    model?.switchIndex();
                  });
          }),
    );
  }
}
