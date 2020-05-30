import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.yellow.shade700;
  Color pimaryColor = Colors.yellow.shade900;

  SizedBox mySizeBox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
            fontSize: 24,
            color: Colors.yellow.shade700,
            fontWeight: FontWeight.bold),
      );

  Container showLogo() {
    return Container(
      width: 150.0,
      child: Image.asset('images/deliveryicon.png'),
    );
  }

  MyStyle();
}
