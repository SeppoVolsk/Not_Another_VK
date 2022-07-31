import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
part 'search_field.dart';
part 'search_button.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _searchController = TextEditingController();
  int offsetFromBottomBar = 3;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 5,
            bottom:
                MediaQuery.of(context).viewInsets.bottom + offsetFromBottomBar,
            right: 5,
          ),
          child: Row(children: [
            Expanded(child: SearchField(_searchController)),
            const SizedBox(width: 5),
            SearchButton(textController: _searchController)
          ]),
        ));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
