import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  // ignore: non_constant_identifier_names
  int teamA_points = 0;

  // ignore: non_constant_identifier_names
  int teamB_points = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(style: TextStyle(fontSize: 35), "Team A"),
                    Text(style: TextStyle(fontSize: 150), "$teamA_points"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA_points++;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 1 Point',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA_points += 2;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 2 Point',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamA_points += 3;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 3 Point',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: VerticalDivider(color: Colors.grey, thickness: 1),
                ),
                Column(
                  children: [
                    Text(style: TextStyle(fontSize: 35), "Team B"),
                    Text(style: TextStyle(fontSize: 150), "$teamB_points"),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB_points++;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 1 Point',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB_points += 2;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 2 Point',
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 45),
                      ),
                      onPressed: () {
                        setState(() {
                          teamB_points += 3;
                        });
                      },
                      child: Text(
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        'Add 3 Point',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(flex: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 45),
              ),
              onPressed: () {
                setState(() {
                  teamA_points = 0;
                  teamB_points = 0;
                });
              },
              child: Text(
                style: TextStyle(color: Colors.black, fontSize: 20),
                'Reset',
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
