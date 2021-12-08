import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tensor_app/components/my_scaffold.dart';
import 'package:tensor_app/models/classmates_provider.dart';

import 'classmate_card.dart';

class ClassmatesPage extends StatefulWidget {
  const ClassmatesPage({Key? key}) : super(key: key);

  @override
  _ClassmatesPageState createState() => _ClassmatesPageState();
}

class _ClassmatesPageState extends State<ClassmatesPage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        title: 'Мои одноклассники',
        isMainPage: false,
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: Provider.of<ClassmatesProvider>(context, listen: true)
              .classmates
              .length,
          itemBuilder: (BuildContext context, int index) {
            var user = Provider.of<ClassmatesProvider>(context, listen: true)
                .classmates[index];
            return ClassmateCard(me: user, index: index);
          },
        ));
  }
}
