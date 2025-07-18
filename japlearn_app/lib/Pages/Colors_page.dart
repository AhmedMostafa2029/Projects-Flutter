import 'package:flutter/material.dart';
import 'package:japlearn_app/Widget/Pages_item.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  // ignore: non_constant_identifier_names
  final List<BaseApp> ColorsList = const [
    BaseApp(
      sound: "sounds/colors/red.wav",
      image: "assets/images/colors/color_red.png",
      japnName: "Aka",
      englishName: "Red",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/white.wav",
      image: "assets/images/colors/color_white.png",
      japnName: "Musuko",
      englishName: "white",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/black.wav",
      image: "assets/images/colors/color_black.png",
      japnName: "Kuro",
      englishName: "black",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/brown.wav",
      image: "assets/images/colors/color_brown.png",
      japnName: "Chairo",
      englishName: "brown",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/gray.wav",
      image: "assets/images/colors/color_gray.png",
      japnName: "Gurē",
      englishName: "gray",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/green.wav",
      image: "assets/images/colors/color_green.png",
      japnName: "Midori",
      englishName: "green",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/yellow.wav",
      image: "assets/images/colors/yellow.png",
      japnName: "Kiiro",
      englishName: "yellow",
      color: Color(0xFFE8EAF6),
    ),
    BaseApp(
      sound: "sounds/colors/dusty yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      japnName: "Dasutiierō",
      englishName: "dusty_yellow",
      color: Color(0xFFE8EAF6),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 157, 123, 123),
      ),
      body: ListView.builder(
        // children: getList(numbersList),
        itemCount: ColorsList.length,
        itemBuilder: (context, index) {
          return PagesItem(color: Color(0xff66015A), item: ColorsList[index]);
        },
      ),
    );
  }

  // List<NumberItem> getList(List<Number> numbers) {
  //   List<NumberItem> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(NumberItem(number: numbers[i]));
  //   }
  //   return itemsList;
  // }
}
