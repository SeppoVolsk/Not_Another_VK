import 'package:flutter/material.dart';
import 'package:vk_postman/presentation/widgets/history_widget.dart';
import 'package:vk_postman/presentation/widgets/post_sliver_list.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';

class MainScreenSetWidgets extends StatefulWidget {
  TextEditingController searchController;
  MainScreenState state;

  MainScreenSetWidgets(
      {Key? key, required this.state, required this.searchController})
      : super(key: key);

  @override
  State<MainScreenSetWidgets> createState() => _MainScreenSetWidgetsState();
}

class _MainScreenSetWidgetsState extends State<MainScreenSetWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          widget.state.when(
            idle: (mainScreenEntity, _) =>
                const Center(child: Text('Ищем новости...')),
            processing: (data, _) =>
                const Center(child: Text('Ищем новости...')),
            successful: (data, _) => Stack(children: [
              PostSliverList(),
              HistoryWidget(),
            ]),
            error: (data, _) => const Center(child: Text('ERROR')),
          ),
        ],
      ),
    );
  }
}
