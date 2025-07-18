import 'package:flutter/material.dart';
import 'package:japlearn_app/Widget/Pages_item.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  // ignore: non_constant_identifier_names
  final List<BaseApp> FamilysList = const [
    BaseApp(
      sound: "sounds/family_members/father.wav",
      image: "assets/images/family_members/family_father.png",
      japnName: "Chichioya",
      englishName: "Father",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/mother.wav",
      image: "assets/images/family_members/family_mother.png",
      japnName: "Musuko",
      englishName: "Mother",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/son.wav",
      image: "assets/images/family_members/family_son.png",
      japnName: "Musuko",
      englishName: "Son",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/daughter.wav",
      image: "assets/images/family_members/family_daughter.png",
      japnName: "Musuko",
      englishName: "Daughter",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/older_brother.wav",
      image: "assets/images/family_members/family_older_brother.png",
      japnName: "Musuko",
      englishName: "Older Brother",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/younger_brother.wav",
      image: "assets/images/family_members/family_younger_brother.png",
      japnName: "Musuko",
      englishName: "Younger Brother",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/older_sister.wav",
      image: "assets/images/family_members/family_older_sister.png",
      japnName: "Musuko",
      englishName: "Older Sister",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/younger_sister.wav",
      image: "assets/images/family_members/family_younger_sister.png",
      japnName: "Musuko",
      englishName: "Younger Sister",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/grandfather.wav",
      image: "assets/images/family_members/family_grandfather.png",
      japnName: "Musuko",
      englishName: "Grandfather",
      color: Color(0xFFFFCCBC),
    ),
    BaseApp(
      sound: "sounds/family_members/grandmother.wav",
      image: "assets/images/family_members/family_grandmother.png",
      japnName: "Musuko",
      englishName: "Grandmother",
      color: Color(0xFFFFCCBC),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Family',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 157, 123, 123),
      ),
      body: ListView.builder(
        // children: getList(numbersList),
        itemCount: FamilysList.length,
        itemBuilder: (context, index) {
          return PagesItem(color: Color(0xff4CAF50), item: FamilysList[index]);
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
