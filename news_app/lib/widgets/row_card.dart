import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/pages/category_page.dart';

class RowCard extends StatelessWidget {
  const RowCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(category: category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          height: 110,
          width: 175,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
