import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_row.dart';
import 'package:news_app/widgets/news_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ListViewRow()),
            SliverToBoxAdapter(child: SizedBox(height: 22)),
            NewsBuilder(category: "general"),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 32,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
      // body: const Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16),
      //   // child: Column(
      //   //   children: [
      //   //     CategoriesListView(),
      //   //     SizedBox(
      //   //       height: 32,
      //   //     ),
      //   //     Expanded(child: NewsListView()),
      //   //   ],
      //   // ),
      // ),
    );
  }
}
