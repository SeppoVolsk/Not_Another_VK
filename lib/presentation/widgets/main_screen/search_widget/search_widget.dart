import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';
import 'package:vk_postman/presentation/blocs/main_screen_bloc.dart';
part 'search_field.dart';
part 'search_button.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({required this.controller, Key? key}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 5,
            bottom: MediaQuery.of(context).viewInsets.bottom + 15,
            right: 5,
          ),
          child: Row(children: [
            Expanded(child: SearchField(controller)),
            const SizedBox(width: 5),
            SearchButton(findText: controller.text)
          ]),
        ));
  }
}
