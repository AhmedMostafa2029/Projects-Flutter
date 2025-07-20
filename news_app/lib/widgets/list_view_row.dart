import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'row_card.dart';

class ListViewRow extends StatelessWidget {
  const ListViewRow({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/OIP.webp', categoryName: 'Business'),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return RowCard(category: categories[index]);
        },
      ),
    );
  }
}
