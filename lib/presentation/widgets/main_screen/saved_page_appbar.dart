import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/files_manager.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

class SavedPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  SavedPageAppBar() : super();
  final fileManager = FileManager();
  final appBarHeight = 50.0;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: DecoratedBox(
          decoration: BoxDecoration(
            gradient:
                lightTheme ? AppColors.blueGradient : AppColors.greyGradient,
          ),
          child: AppBar(
            title: const Text('Сохранённые'),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_forever),
                onPressed: () async {
                  await fileManager.clearDirectory();
                },
              )
            ],
          )),
    );
  }
}
