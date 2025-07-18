import 'package:flutter/material.dart';
import 'package:japlearn_app/Widget/Pages_item.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<BaseApp> numbersList = const [
    BaseApp(
      sound: 'sounds/numbers/number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      japnName: 'Ichi',
      englishName: 'One',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_two_sound.mp3',
      image: 'assets/images/numbers/number_two.png',
      japnName: 'Ni',
      englishName: 'Two',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_three_sound.mp3',
      image: 'assets/images/numbers/number_three.png',
      japnName: 'San',
      englishName: 'Three',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_four_sound.mp3',
      image: 'assets/images/numbers/number_four.png',
      japnName: 'Shi',
      englishName: 'Four',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_five_sound.mp3',
      image: 'assets/images/numbers/number_five.png',
      japnName: 'Go',
      englishName: 'Five',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_six_sound.mp3',
      image: 'assets/images/numbers/number_six.png',
      japnName: 'Roku',
      englishName: 'Six',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      image: 'assets/images/numbers/number_seven.png',
      japnName: 'Shichi',
      englishName: 'Seven',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      image: 'assets/images/numbers/number_eight.png',
      japnName: 'Hachi',
      englishName: 'Eight',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      image: 'assets/images/numbers/number_nine.png',
      japnName: 'Ku',
      englishName: 'Nine',
      color: Color(0xFFB2DFDB),
    ),
    BaseApp(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      image: 'assets/images/numbers/number_ten.png',
      japnName: 'Juu',
      englishName: 'Ten',
      color: Color(0xFFB2DFDB),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Numbers',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 157, 123, 123),
      ),
      body: ListView.builder(
        // children: getList(numbersList),
        itemCount: numbersList.length,
        itemBuilder: (context, index) {
          return PagesItem(color: Color(0xffEF9235), item: numbersList[index]);
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
