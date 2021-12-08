import 'package:flutter/material.dart';
import 'package:tensor_app/constants.dart';

class MyScaffold extends StatefulWidget {
  final String title;
  final bool isMainPage;
  final Widget child;

  const MyScaffold(
      {Key? key,
      required this.title,
      required this.isMainPage,
      required this.child})
      : super(key: key);

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: widget.isMainPage
          ? Drawer(
              child: ListView(children: const [
              DrawerHeader(
                child: Text("Какой-то заголовок"),
                decoration: BoxDecoration(color: header),
              ),
              ListTile(title: Text("Профиль")),
              ListTile(title: Text("Сообщения")),
              ListTile(title: Text("О себе")),
              ListTile(title: Text("Настройки"))
            ]))
          : null,
      appBar: AppBar(
        backgroundColor: header,
        title: Text(
          widget.title,
          style: const TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: widget.child,
    );
  }
}
