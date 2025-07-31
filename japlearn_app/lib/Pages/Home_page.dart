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
      backgroundColor: Color.fromARGB(255, 255, 232, 157),
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
            color: Color.fromARGB(255, 255, 239, 186),
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
            color: Color.fromARGB(255, 255, 239, 186),
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
            color: Color.fromARGB(255, 255, 239, 186),
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
            color: Color.fromARGB(255, 255, 239, 186),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
