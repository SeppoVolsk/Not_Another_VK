// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/widgets/main_screen_set_widgets.dart';
import 'package:vk_postman/presentation/widgets/saved_media_warhouse_widget.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  final _searchController = TextEditingController();
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenBLoC, MainScreenState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const TitleWidget(),
          ),
          body: _selectedTab == 0
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
            currentIndex: _selectedTab,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.fiber_new_rounded),
                label: 'Новости',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.now_wallpaper_sharp), label: 'Сохраненные')
            ],
            onTap: (index) {
              _selectedTab == index
                  ? null
                  : setState(() {
                      _selectedTab = index;
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
