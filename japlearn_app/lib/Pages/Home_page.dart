import 'package:flutter/material.dart';
import 'package:japlearn_app/Pages/Colors_page.dart';
import 'package:japlearn_app/Pages/Family_page.dart';
import 'package:japlearn_app/Pages/Numbers_Page.dart';
import 'package:japlearn_app/Pages/Phrases_page.dart';
import 'package:japlearn_app/Widget/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 15),
          child: Icon(Icons.home, size: 45, color: Color(0xFFB2DFDB)),
        ),
        title: Text(
          'Home App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 149, 149, 149),
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // ignore: avoid_types_as_parameter_names
                  builder: (BuildContext) {
                    return NumbersPage();
                  },
                ),
              );
            },
            color: Color(0xffEF9235),
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // ignore: avoid_types_as_parameter_names
                  builder: (BuildContext) {
                    return FamilyPage();
                  },
                ),
              );
            },
            color: Color(0xff4CAF50),
            text: 'Family Members',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext) {
                    return ColorsPage();
                  },
                ),
              );
            },
            color: Color(0xff66015A),
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // ignore: avoid_types_as_parameter_names
                  builder: (BuildContext) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            color: Color(0xff025F9D),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
