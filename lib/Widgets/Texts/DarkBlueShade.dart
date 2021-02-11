import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkBlueShadeText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  const DarkBlueShadeText(
      {Key key,
        this.text,
        this.fontWeight = FontWeight.normal,
        this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: Color.fromRGBO(156, 162, 218, 1),
          fontWeight: this.fontWeight,
          fontSize: this.fontSize),
    );
  }
}
