import 'package:flutter/material.dart';
import 'package:tensor_app/constants.dart';

/// Индикатор загрузки
class Indicator {
  static Widget circle = const Center(
      child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(mainIcon)));
}
