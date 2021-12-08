import 'package:flutter/material.dart';

import 'classmate_model.dart';

class ClassmatesProvider extends ChangeNotifier {
  List<Classmate> classmates = [];

  void updateProvider() {
    notifyListeners();
  }
}