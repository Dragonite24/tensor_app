import 'package:flutter/material.dart';
import 'package:tensor_app/pages/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const Scaffold(
        body: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
