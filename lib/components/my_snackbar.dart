import 'package:flutter/material.dart';
import 'package:tensor_app/constants.dart';

/// Снэкбар
class MySnackbar {
  static void show(context, String text) {
    var snackBar = SnackBar(
      content: text.isEmpty ? const Text('Что-то пошло не так') : Text(text),
      backgroundColor: mainIcon,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}