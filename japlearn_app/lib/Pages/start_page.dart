import 'package:flutter/material.dart';
import 'package:japlearn_app/Pages/Home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD8D8D8),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50, top: 70),
            child: Image(
              image: AssetImage(
                'assets/images/start/learn-language-vector-11106964.jpg',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  // ignore: avoid_types_as_parameter_names
                  builder: (BuildContext) {
                    return HomePage();
                  },
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFAD88),
                borderRadius: BorderRadius.circular(42),
              ),
              padding: EdgeInsetsGeometry.only(left: 20, right: 20),
              alignment: Alignment.center,
              height: 90,
              width: double.infinity,
              child: Text(
                'Start Learning',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
