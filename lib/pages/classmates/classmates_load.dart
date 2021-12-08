import 'package:flutter/material.dart';
import 'package:tensor_app/components/my_circular_indicator.dart';
import 'package:tensor_app/models/classmates_provider.dart';
import 'package:tensor_app/pages/classmates/classmates_page.dart';
import 'package:tensor_app/requests.dart';
import 'package:provider/provider.dart';

class ClassmatesLoad extends StatefulWidget {
  const ClassmatesLoad({Key? key}) : super(key: key);

  @override
  _ClassmatesLoadState createState() => _ClassmatesLoadState();
}

class _ClassmatesLoadState extends State<ClassmatesLoad> {
  bool isLoaded = false;

  @override
  void initState() {
    HttpRequests().getClassmates().then((value) {
      if (value.isNotEmpty) {
        Provider.of<ClassmatesProvider>(context, listen: false).classmates =
            value;
        isLoaded = true;
        setState(() {});
      } else {
        var snackBar = const SnackBar(content: Text("Что-то пошло не так"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => isLoaded
      ? const Scaffold(body: ClassmatesPage())
      : Scaffold(body: Indicator.circle);
}
