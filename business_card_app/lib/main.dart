import 'package:flutter/material.dart';

void main() {
  runApp(BusnessCardApp());
}

class BusnessCardApp extends StatelessWidget {
  const BusnessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Color(0xff4E3A3C),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('image/OIP.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "NOME SOBRENOME",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Cargo/Atividade/Profissao",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 152, 152, 152),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image(
                          image: AssetImage('image/icons8-whatsapp-24.png'),
                          color: Color(0xff4E3A3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Whatsapp", style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.phone_iphone,
                          size: 32,
                          color: Color(0xff4E3A3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Telefone", style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image(
                          image: AssetImage('image/icons8-instagram-24.png'),
                          color: Color(0xff4E3A3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Instagram",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.facebook_outlined,
                          size: 32,
                          color: Color(0xff4E3A3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Facebook", style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 50,
                  // color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.email_outlined,
                          size: 32,
                          color: Color(0xff4E3A3C),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Email", style: TextStyle(fontSize: 24)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
