import 'package:flutter/material.dart';
import 'package:tensor_app/pages/categories/categories_page.dart';

import '../constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              const SizedBox(height: 64),
              Image.asset('assets/images/splash_screen.png'),
              const SizedBox(height: 50),
              const Text(
                'Это страница школы Тензор.\nТут вы можете познакомиться с нашими\nучениками и посмотреть темы занятий.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mainText,
                  fontSize: 14,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoriesPage()));
                  },
                  child: const Text(
                    'Продолжить',
                    style: TextStyle(color: semiText),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
