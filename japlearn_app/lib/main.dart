import 'package:flutter/material.dart';
import 'package:japlearn_app/Pages/start_page.dart';

void main() {
  runApp(const JapLearn());
}

class JapLearn extends StatelessWidget {
  const JapLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StartPage());
  }
}
