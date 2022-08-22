import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/auth/auth_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/navigation/main_navigation.dart';
import 'package:vk_postman/presentation/widgets/history_widget.dart';
import 'post_list_card_widget.dart';

class PostSliverList extends StatefulWidget {
  const PostSliverList({Key? key}) : super(key: key);

  @override
  State<PostSliverList> createState() => _PostSliverListState();
}

class _PostSliverListState extends State<PostSliverList> {
  @override
  Widget build(BuildContext context) {
    final userIsAuth =
        context.watch<AuthenticationBLoC>().state is AuthenticatedState;
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          leading: IconButton(
            icon: userIsAuth ? Icon(Icons.logout) : Icon(Icons.login),
            onPressed: () {
              userIsAuth
                  ? context
                      .read<AuthenticationBLoC>()
                      .add(const AuthenticationEvent.logOut())
                  : Navigator.of(context).pushNamed(MainNavigation().authRoute);
            },
          ),
          pinned: true,
          floating: true,
          stretch: true,
          title: const Text('Новости'),
          flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle
              ],
              background: Image.asset(
                lightTheme
                    ? 'assets/icons/VkLight/VkLight.png'
                    : 'assets/icons/VkDark/VkDark.png',
                fit: BoxFit.cover,
              )),
          expandedHeight: 300,
          actions: [
            IconButton(
                icon: lightTheme
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.wb_sunny_rounded),
                onPressed: () => context
                    .read<AppThemeBLoC>()
                    .add(const AppThemeEvent.change())),
          ],
        ),
        SliverPersistentHeader(
          delegate: MainScreenPersistentDelegate(),
          pinned: true,
          // floating: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return PostCard(index: index);
        },
                childCount: context.select((MainScreenBLoC bloc) =>
                    bloc.state.data.posts?.length ?? 0)))
      ],
    );
  }
}

class MainScreenPersistentDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return const SizedBox.expand(child: HistoryWidget());
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 48;

  @override
  // TODO: implement minExtent
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
