//
import 'package:flutter/widgets.dart';

class BaseApp {
  final String sound;
  final String image;
  final String japnName;
  final String englishName;
  final Color color;

  const BaseApp({
    required this.sound,
    required this.image,
    required this.japnName,
    required this.englishName,
    required this.color,
  });
}

class ClsPhrases {
  final String sound;
  final String japnName;
  final String englishName;
  final Color color;

  const ClsPhrases({
    required this.sound,
    required this.japnName,
    required this.englishName,
    required this.color,
  });
}
