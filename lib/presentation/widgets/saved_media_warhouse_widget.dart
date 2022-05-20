import 'package:flutter/material.dart';

class SavedMediaWarehouse extends StatefulWidget {
  SavedMediaWarehouse({Key? key}) : super(key: key);

  @override
  State<SavedMediaWarehouse> createState() => _SavedMediaWarehouseState();
}

class _SavedMediaWarehouseState extends State<SavedMediaWarehouse> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Сохранённые медиа'));
  }
}
