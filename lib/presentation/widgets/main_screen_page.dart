import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/widgets/main_screen/bottom_navi_bar.dart';
import 'package:vk_postman/presentation/widgets/main_screen/model/main_screen_model.dart';
import 'package:vk_postman/presentation/widgets/main_screen/search_widget/search_widget.dart';
import 'package:vk_postman/presentation/widgets/post_sliver_list.dart';
import 'package:vk_postman/presentation/widgets/saved_media_warhouse_widget.dart';
import 'main_screen/saved_page_appbar.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  final mainScreenModel = MainScreenModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenIndex = MainScreenProvider.of(context)?.model?.mainScreenIndex;

    return BlocBuilder<MainScreenBLoC, MainScreenState>(
        builder: (context, state) {
      return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: screenIndex == selectMenu.saved ? SavedPageAppBar() : null,
          body: screenIndex == selectMenu.news
              ? Stack(children: [
                  PostSliverList(),
                  SearchWidget(),
                ])
              : SavedMediaWarehouse(),
          bottomNavigationBar: const BottomNaviBar(),
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

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.face_sharp)),
        Text(
          context.read<AuthenticationBLoC>().state.data.userId.toString(),
        ),
      ],
    );
  }
}
