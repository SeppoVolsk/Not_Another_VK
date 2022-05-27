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
    _filesList = PostsDataProvider().getFilesInDirectory();
  }

  // Future<void> getFilesNames() async {
  //   _filesList = await PostsDataProvider().getFilesInDirectory();
  //   print('Get Files Names   ');
  //   print(_filesList);
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder(
          future: _filesList,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return Expanded(
                child: ListView.builder(
                  itemCount: (snapshot.data.length),
                  itemBuilder: (context, index) {
                    return
                        //for (int i = 0; i < snapshot.data.length; i++)
                        Column(
                      children: [
                        Text(snapshot.data.elementAt(index).path),
                        Image.file(
                          snapshot.data.elementAt(index),
                        ),
                      ],
                    );
                  },
                ),
              );
            } else {
              return Center(child: Text('Нет данных'));
            }
          }),
    ]);
  }
}
