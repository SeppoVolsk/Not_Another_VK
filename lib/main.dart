import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vk_postman/data/persistent_storage.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_repository.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_repository.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';
import 'package:vk_postman/presentation/widgets/main_screen/model/main_screen_model.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';
import 'package:vk_postman/simple_bloc_observer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'initial_widget.dart';

final keyForSnackBar = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(const InitialWidget()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static final mainNavigation = MainNavigation();
  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _currentLocale;
  void setUpLocale(Locale? newLocale) {
    setState(() {
      _currentLocale = newLocale;
      print(newLocale);
    });
  }

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
              ..add(MainScreenEvent.load())),
        BlocProvider<AuthenticationBLoC>(
            create: (_) =>
                AuthenticationBLoC(repository: AuthenticationRepository())
                  ..add(AuthenticationEvent.checkAuth())),
      ],
      child: MaterialApp(
        title: 'Not Another VK',
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: keyForSnackBar,
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        themeMode: context.watch<AppThemeBLoC>().state.data.appThemeMode,
        home: MainScreenProvider(
            model: MainScreenModel(), child: const MainScreenPage()),
        routes: MyApp.mainNavigation.routes,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _currentLocale,
      ),
    );
  }
}
