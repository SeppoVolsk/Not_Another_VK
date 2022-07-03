import 'dart:math';

import 'package:flutter/material.dart';

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
          title: Text('Sliver App Bar'),
          backgroundColor: Colors.blueGrey,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            'lib/assets/pringles-logo.png',
            fit: BoxFit.cover,
          )),
          expandedHeight: 300,
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
