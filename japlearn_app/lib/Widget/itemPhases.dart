import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japlearn_app/models/Cls_baseApp.dart';

class ItemPhases extends StatelessWidget {
  const ItemPhases({Key? Key, required this.item, required this.color})
    : super(key: Key);
  final ClsPhrases item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(22),
        ),
        height: 100,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.japnName,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    item.englishName,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(item.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
