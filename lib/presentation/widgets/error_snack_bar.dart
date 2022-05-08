import 'package:flutter/material.dart';
import 'package:vk_postman/main.dart';

void errorSnackBar([String? errorMessage]) {
  final snackBar = SnackBar(
    content: Text(errorMessage!),
    behavior: SnackBarBehavior.floating,
  );
  final currentState = keyForSnackBar.currentState as ScaffoldMessengerState;
  currentState.showSnackBar(snackBar);
}
