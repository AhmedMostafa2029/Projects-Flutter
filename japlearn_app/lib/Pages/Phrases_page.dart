import 'package:flutter/material.dart';
import 'package:japlearn_app/Widget/itemPhases.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  // ignore: non_constant_identifier_names
  final List<ClsPhrases> PhrasesList = const [
    ClsPhrases(
      sound: 'sounds/phrases/are_you_coming.wav',
      japnName: "kimasu ka?",
      englishName: "Are you coming?",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      japnName: "chane toku warnide kudasi",
      englishName: "Don’t forget to subscribe",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/how_are_you_feeling.wav",
      japnName: "chōshi wa dō desu ka?",
      englishName: "How are you feeling?",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/i_love_anime.wav",
      japnName: "anime ga daisuki desu",
      englishName: "I love anime",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/i_love_programming.wav",
      japnName: "prograingu ga daisuki desu",
      englishName: "I love programming",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/programming_is_easy.wav",
      japnName: "purogrming a kantn desu",
      englishName: "Programming is easy",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/what_is_your_name.wav",
      japnName: "onamae wa nan desu ka?",
      englishName: "What is your name?",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: "sounds/phrases/where_are_you_going.wav",
      japnName: "doko e iku no?",
      englishName: "Where are you going?",
      color: Color(0xFFC8E6C9),
    ),
    ClsPhrases(
      sound: 'sounds/phrases/yes_im_coming.wav',
      japnName: "hai, ikimasu",
      englishName: "Yes, I’m coming",
      color: Color(0xFFC8E6C9),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF6DC),
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 157, 123, 123),
      ),
      body: ListView.builder(
        // children: getList(numbersList),
        itemCount: PhrasesList.length,
        itemBuilder: (context, index) {
          return ItemPhases(color: Color(0xff025F9D), item: PhrasesList[index]);
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
