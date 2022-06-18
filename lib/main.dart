import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_repository.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_repository.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';
import 'package:vk_postman/simple_bloc_observer.dart';

import 'initial_widget.dart';

final keyForSnackBar = GlobalKey<ScaffoldMessengerState>();

void main() {
  BlocOverrides.runZoned(
    () => runApp(const InitialWidget()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    final mainScreenRepository = MainScreenInitialData(
      MainScreenCachedData(
        MainScreenNetworkData(),
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainScreenBLoC>(
            create: (_) => MainScreenBLoC(repository: mainScreenRepository)
              ..add(MainScreenEvent.check())),
        BlocProvider<AuthenticationBLoC>(
            create: (_) =>
                AuthenticationBLoC(repository: IAuthenticationRepository())
                  ..add(AuthenticationEvent.checkAuth())),
      ],
      child: MaterialApp(
        title: 'Not Another VK',
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: keyForSnackBar,
        theme: context.watch<AppThemeBLoC>().state.data.appTheme,
        home: const MainScreenPage(),
        routes: mainNavigation.routes,
      ),
      //onGenerateRoute: mainNavigation.onGenerateRoute,
      //initialRoute: mainNavigation.initialRoute,
    );
  }
}
