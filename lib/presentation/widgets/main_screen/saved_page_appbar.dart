import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

class SavedPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  SavedPageAppBar() : super();

  @override
  Size get preferredSize => Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: DecoratedBox(
          decoration: BoxDecoration(
            gradient:
                lightTheme ? AppColors.blueGradient : AppColors.greyGradient,
          ),
          child: AppBar(
            title: const Text('Сохранённые'),
            centerTitle: true,
          )),
    );
  }
}
