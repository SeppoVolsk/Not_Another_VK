import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/files_manager.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/main.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_repository.dart';

class InitialWidget extends StatefulWidget {
  const InitialWidget({Key? key}) : super(key: key);

  @override
  State<InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> {
  final storage = PersistentStorage();
  final fileManager = FileManager();

  @override
  void initState() {
    super.initState();

    storage.init().whenComplete(() => setState(() {}));
    fileManager.init().whenComplete(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBLoC>(
        create: (_) => AppThemeBLoC(repository: IAppThemeRepository())
          ..add(const AppThemeEvent.read()),
        child: storage.isReady && fileManager.isReady
            ? const MyApp()
            : const Center(child: CircularProgressIndicator()));
  }
}
