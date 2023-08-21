import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResubleClickButton extends StatelessWidget {
  double size;
  Color? color;
  String? text;
  IconData? icon;
  Color backgroundColor;
  bool isIcon = false;

  ResubleClickButton(
      {super.key,
      required this.size,
      this.text,
      required this.backgroundColor,
      this.icon,
      required this.color,
      required this.isIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: isIcon == false
          ? Center(
              child: Text(
                text!,
                style: TextStyle(color: color),
              ),
            )
          : Icon(icon),
    );
  }
}
