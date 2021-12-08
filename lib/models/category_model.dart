import 'package:flutter/material.dart';
import 'package:tensor_app/pages/classmates/classmates_load.dart';

class Category {
  final String title;
  final String image;
  final Widget page;

  Category({required this.title, required this.image, required this.page});
}

List<Category> myCategories = [
  Category(
    title: 'Мои одноклассники',
    image: 'assets/images/my_classmates.png',
    page: const ClassmatesLoad(),
  ),
  Category(
    title: 'Темы уроков',
    image: 'assets/images/developers.png',
    page: const ClassmatesLoad(),
  ),
];
