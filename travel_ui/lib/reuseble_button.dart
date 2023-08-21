import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  double? width;
  // final String? text;

  Button({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 12, 131, 228),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("images/arrow.png")],
      ),
    );
  }
}
