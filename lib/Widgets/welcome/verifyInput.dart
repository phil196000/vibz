import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibz/Theme/thememodel.dart';

class VerifyInput extends StatelessWidget {
  final ThemeModel themeModel = ThemeModel();
  final TextEditingController textEditingController;

  // final bool autofocus;
  final Function onChanged;
  final FocusNode focusNode;
  final FocusNode focusNodeInput;
  final Function onKey;

  VerifyInput(
      {Key key,
      this.textEditingController,
      // this.autofocus,
      this.onChanged,
      this.focusNode,
      this.onKey,
      this.focusNodeInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: this.focusNodeInput,

      // autofocus: this.autofocus,
      onChanged: this.onChanged,
      controller: this.textEditingController,
      keyboardType: TextInputType.number,
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
