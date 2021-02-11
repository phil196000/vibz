import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;

   PrimaryButton({Key key, this.onPressed, this.text}) : super(key: key);
ThemeModel themeModel = ThemeModel();
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: this.onPressed,
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
      color: themeModel.background,
      child: Container(
        child: Text(
          this.text,
          style: TextStyle(color: Colors.white,fontSize: 16),
        ),
      ),
    );
  }
}
