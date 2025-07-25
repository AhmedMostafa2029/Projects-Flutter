import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [NewsBuilder(category: category)]),
    );
  }
}
