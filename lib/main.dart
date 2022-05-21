import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_repository.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';
import 'package:vk_postman/presentation/widgets/main_screen_page.dart';
import 'package:vk_postman/simple_bloc_observer.dart';

final keyForSnackBar = GlobalKey<ScaffoldMessengerState>();

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: keyForSnackBar,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: BlocProvider<MainScreenBLoC>(
        create: ((_) => MainScreenBLoC(repository: IMainScreenRepository())
          ..add(MainScreenEvent.read(null))),
        child: const MainScreenPage(),
      ),
      routes: mainNavigation.routes,
      //onGenerateRoute: mainNavigation.onGenerateRoute,
      //initialRoute: mainNavigation.initialRoute,
    );
  }
}
