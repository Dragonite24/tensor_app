import 'package:flutter/material.dart';

class ClassmatesLoad extends StatefulWidget {
  const ClassmatesLoad({Key? key}) : super(key: key);

  @override
  _ClassmatesLoadState createState() => _ClassmatesLoadState();
}

class _ClassmatesLoadState extends State<ClassmatesLoad> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) => isLoaded ? Container() : Container();
}
