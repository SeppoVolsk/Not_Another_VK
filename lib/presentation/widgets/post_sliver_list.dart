import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/images.dart';
import 'package:vk_postman/presentation/blocs/app_theme/app_theme_bloc.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
import 'package:vk_postman/presentation/widgets/history_widget.dart';

import 'post_list_card_widget.dart';

class PostSliverList extends StatefulWidget {
  PostSliverList({Key? key}) : super(key: key);

  @override
  State<PostSliverList> createState() => _PostSliverListState();
}

class _PostSliverListState extends State<PostSliverList> {
  @override
  Widget build(BuildContext context) {
    final lightTheme =
        context.watch<AppThemeBLoC>().state is LightAppThemeState;
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: true,
          stretch: true,
          title: Text('Sliver App Bar'),
          backgroundColor: Colors.grey,
          flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle
              ],
              title: const DecoratedBox(
                child: const Text('Not Another VK',
                    style: TextStyle(fontWeight: FontWeight.w900)),
                decoration: const BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.blueGrey, Colors.blue])),
              ),
              background: Image.asset(
                AppImages.appBarBackground,
                fit: BoxFit.cover,
              )),
          expandedHeight: 300,
          actions: [
            IconButton(
                icon: lightTheme
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.wb_sunny_rounded),
                onPressed: () =>
                    context.read<AppThemeBLoC>().add(AppThemeEvent.change())),
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
          // Container(
          //   //color: Color.fromRGBO(index, 50, 70, 1),
          //   height: 50,
          //   child: Text(index.toString()),
          //   padding: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //       color: Color.fromRGBO(index, 50, 70, 1), border: Border.all()),
          // );
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
    return const SizedBox.expand(child: const HistoryWidget());
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 96;

  @override
  // TODO: implement minExtent
  double get minExtent => 96;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
