// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/data/data_providers/posts_data_provider.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';
import 'package:vk_postman/presentation/widgets/main_screen_set_widgets.dart';
import 'package:vk_postman/presentation/widgets/saved_media_warhouse_widget.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

enum _select { news, saved }

class _MainScreenPageState extends State<MainScreenPage> {
  final _searchController = TextEditingController();

  var _selectedTab = _select.news;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    final userIsAuth =
        context.watch<AuthenticationBLoC>().state is AuthenticatedState;
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 65,
            title: _selectedTab == _select.news
                ? const TitleWidget()
                : Text('Сохранённые медиа'),
            actions: [
              userIsAuth
                  ? Column(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.face_sharp)),
                        Text(
                          context
                              .read<AuthenticationBLoC>()
                              .state
                              .data
                              .userId
                              .toString(),
                        ),
                      ],
                    )
                  : SizedBox.shrink(),
              _selectedTab == _select.saved
                  ? IconButton(
                      icon: Icon(Icons.delete_forever),
                      onPressed: () async {
                        await PostsDataProvider().clearDirectory();
                      },
                    )
                  : IconButton(
                      icon: userIsAuth ? Icon(Icons.logout) : Icon(Icons.login),
                      onPressed: () {
                        userIsAuth
                            ? context
                                .read<AuthenticationBLoC>()
                                .add(AuthenticationEvent.logOut())
                            : Navigator.of(context)
                                .pushNamed(MainNavigation().authRoute);
                      },
                    ),
              IconButton(
                  icon: lightTheme
                      ? Icon(Icons.dark_mode)
                      : Icon(Icons.wb_sunny_rounded),
                  onPressed: () =>
                      context.read<AppThemeBLoC>().add(AppThemeEvent.change())),
            ],
          ),
          body: _selectedTab == _select.news
              ? MainScreenSetWidgets(
                  state: state, searchController: _searchController)
              : SavedMediaWarehouse(),
          floatingActionButton: FloatingActionButton(
            child: state.when(
              idle: (data, _) =>
                  const CircularProgressIndicator(color: Colors.white),
              processing: (data, _) =>
                  const CircularProgressIndicator(color: Colors.white),
              successful: (data, _) => const Icon(Icons.autorenew),
              error: (data, _) => const Icon(Icons.error_outline),
            ),
            onPressed: state is SuccessfulMainScreenState ||
                    state is ErrorMainScreenState
                ? () {
                    FocusScope.of(context).unfocus();
                    if (_searchController.text.isNotEmpty) {
                      context
                          .read<MainScreenBLoC>()
                          .add(MainScreenEvent.update(_searchController.text));
                    }
                  }
                : null,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: BottomNavigationBar(
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
            },
          ),
        ),
      );
    });
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text('Найдено новостей: ' +
        context.select((MainScreenBLoC bloc) =>
            bloc.state.data.posts?.length.toString() ?? '0'));
  }
}
