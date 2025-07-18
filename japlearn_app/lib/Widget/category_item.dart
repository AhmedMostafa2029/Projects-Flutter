import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.color, this.text, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        height: 90,
        width: double.infinity,
        color: color,
        child: Text(
          '$text',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
