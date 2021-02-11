import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibz/Theme/thememodel.dart';

class VerifyInput extends StatelessWidget {
  ThemeModel themeModel = ThemeModel();

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
      ],
      style:
          TextStyle(color: themeModel.background, fontWeight: FontWeight.bold),
      cursorColor: themeModel.background,
      decoration: InputDecoration(
          fillColor: themeModel.white,
          filled: true,
          // hintText: "Enter Phone number",
          hintStyle: TextStyle(
              color: themeModel.background, fontWeight: FontWeight.normal),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: themeModel.background,
                  width: 2)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: themeModel.background, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: themeModel.background,
                  width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: themeModel.background, width: 2))),
    );
  }
}
