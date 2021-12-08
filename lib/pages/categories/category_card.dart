import 'package:flutter/material.dart';
import 'package:tensor_app/constants.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final Widget page;

  const CategoryCard(
      {Key? key, required this.title, required this.image, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 0.5,
                blurRadius: 5)
          ],
          color: white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: hover,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Image.asset(image),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: FittedBox(
                  child: Text(
                    title,
                    style: const TextStyle(color: mainText, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
