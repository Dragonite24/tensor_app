import 'package:flutter/material.dart';
import 'package:tensor_app/components/my_scaffold.dart';
import 'package:tensor_app/models/category_model.dart';
import 'package:tensor_app/pages/categories/category_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      isMainPage: true,
      title: 'TENSOR SCHOOL',
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: myCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 40,
        ),
        itemBuilder: (context, index) => CategoryCard(
          title: myCategories[index].title,
          image: myCategories[index].image,
          page: myCategories[index].page,
        ),
      ),
    );
  }
}
