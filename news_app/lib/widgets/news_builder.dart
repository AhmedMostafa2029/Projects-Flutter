import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/sliver_list_column.dart';
import '../services/news_service.dart';

class NewsBuilder extends StatefulWidget {
  const NewsBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsBuilder> createState() => _NewsBuilderState();
}

class _NewsBuilderState extends State<NewsBuilder> {
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SliverListColumn(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('oops  was an error, try later'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}

// class NewsListViewBuilder extends StatefulWidget {
//   const NewsListViewBuilder({super.key, required this.categor});
//   final String categor;
//   @override
//   State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
// }

// class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getTopHeadlines(category: "general");
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : NewsListView(
//             articles: articles,
//           );
//   }
// }
