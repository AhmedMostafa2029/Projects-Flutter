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
    return Container(
      height: 135,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(item.image)),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
