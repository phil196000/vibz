import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibz/Widgets/Texts/Green.dart';

class GreenTextButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const GreenTextButton({Key key, this.onPressed, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: this.onPressed, child: GreenText(text: this.text,fontSize: 14,fontWeight: FontWeight.bold,));
  }
}
