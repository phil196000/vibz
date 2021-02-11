import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkBlueText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  const DarkBlueText(
      {Key key,
      this.text,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: Color.fromRGBO(43, 36, 107, 1),
          fontWeight: this.fontWeight,
          fontSize: this.fontSize),
    );
  }
}
