import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  final TextEditingController controller;
  const SearchWidget(this.controller, {Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 15, right: 75),
          child: TextField(
            style: TextStyle(color: Theme.of(context).primaryColor),
            controller: widget.controller,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).primaryColor, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).primaryColor, width: 2)),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Поиск',
            ),
          ),
        ));
  }
}
