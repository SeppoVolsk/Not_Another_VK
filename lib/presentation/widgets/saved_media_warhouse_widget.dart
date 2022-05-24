import 'dart:io';
import 'package:flutter/material.dart';
import 'package:vk_postman/data/data_providers/posts_data_provider.dart';

class SavedMediaWarehouse extends StatefulWidget {
  SavedMediaWarehouse({Key? key}) : super(key: key);

  @override
  State<SavedMediaWarehouse> createState() => _SavedMediaWarehouseState();
}

class _SavedMediaWarehouseState extends State<SavedMediaWarehouse> {
  var _filesList;

  @override
  void initState() {
    super.initState();
    _filesList = PostsDataProvider().getFilesInDir();
  }

  Future<void> getFilesNames() async {
    _filesList = await PostsDataProvider().getFilesInDir();
    print('Get Files Names   ');
    print(_filesList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder(
          future: _filesList,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Text({snapshot.data}.toString());
            } else {
              return Text('Нет данных');
            }
          }),
    ]);
  }
}
