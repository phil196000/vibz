import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GreenText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  const GreenText(
      {Key key,
        this.text,
        this.fontWeight = FontWeight.bold,
        this.fontSize = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: Color.fromRGBO(18, 253, 190, 1.0),
          fontWeight: this.fontWeight,
          fontSize: this.fontSize),
    );
  }
}
