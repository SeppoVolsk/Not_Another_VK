import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vk_postman/presentation/widgets/history_widget.dart';

class PostSliverList extends StatefulWidget {
  PostSliverList({Key? key}) : super(key: key);

  @override
  State<PostSliverList> createState() => _PostSliverListState();
}

class _PostSliverListState extends State<PostSliverList> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        //Image.asset('pringles-logo.png'),
        SliverAppBar(
          pinned: true,

          //title: Text('Sliver App Bar'),
          backgroundColor: Colors.grey,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            'lib/assets/pringles-logo.png',
            fit: BoxFit.cover,
          )),
          expandedHeight: 300,
        ),
        SliverPersistentHeader(
          delegate: MainScreenPersistentDelegate(),
          pinned: true,
          floating: false,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return Container(
            //color: Color.fromRGBO(index, 50, 70, 1),
            height: 50,
            child: Text(index.toString()),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(index, 50, 70, 1), border: Border.all()),
          );
        }, childCount: 254))
      ],
    );
  }
}

class MainScreenPersistentDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return HistoryWidget();
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
