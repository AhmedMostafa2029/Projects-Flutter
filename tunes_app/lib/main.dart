import 'package:flutter/material.dart';
import 'package:tunes_app/Pages/tune_page.dart';

void main() {
  runApp(TunesApp());
}

class TunesApp extends StatelessWidget {
  const TunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
