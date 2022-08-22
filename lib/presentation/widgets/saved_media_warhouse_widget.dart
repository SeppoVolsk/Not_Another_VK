import 'package:flutter/material.dart';
import 'package:vk_postman/data/files_manager.dart';

class SavedMediaWarehouse extends StatefulWidget {
  SavedMediaWarehouse({Key? key}) : super(key: key);

  @override
  State<SavedMediaWarehouse> createState() => _SavedMediaWarehouseState();
}

class _SavedMediaWarehouseState extends State<SavedMediaWarehouse> {
  var _filesList;
  final fileManager = FileManager();

  @override
  void initState() {
    super.initState();
    _filesList = fileManager.getFilesInDirectory();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FutureBuilder(
          future: _filesList,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              final filesAmountIndex = snapshot.data.length - 1;
              return Expanded(
                child: ListView.builder(
                  itemCount: (snapshot.data.length),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(snapshot.data
                            .elementAt(filesAmountIndex - index)
                            .path),
                        Image.file(
                          snapshot.data.elementAt(filesAmountIndex - index),
                        ),
                      ],
                    );
                  },
                ),
              );
            } else {
              return const Center(child: Text('Нет данных'));
            }
          }),
    ]);
  }
}
