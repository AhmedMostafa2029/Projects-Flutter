import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class PagesItem extends StatelessWidget {
  const PagesItem({Key? Key, required this.item, required this.color})
    : super(key: Key);
  final BaseApp item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFFF6DC),
              ),
              child: Image.asset(item.image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.japnName,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    item.englishName,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
