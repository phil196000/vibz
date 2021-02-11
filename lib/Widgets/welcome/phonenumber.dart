import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';
import 'package:vibz/Widgets/Texts/Green.dart';



class PhoneNumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeModel themeModel = ThemeModel();
    return Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              color: themeModel.greenBackgroundlight,
              border:
              Border.all(color: themeModel.borderColor),
              borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(
              top: 15, bottom: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: GreenText(
                  text: 'Welcome to Vibz',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: TextField(
                  style: TextStyle(
                      color: themeModel.background,
                      fontWeight: FontWeight.bold),
                  cursorColor: themeModel.background,
                  decoration: InputDecoration(
                      fillColor: themeModel.white,
                      filled: true,
                      hintText: "Enter Phone number",
                      hintStyle: TextStyle(
                          color: themeModel.background,
                          fontWeight: FontWeight.normal),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(0),
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: themeModel.background,
                              width: 2)),
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(0),
                          borderSide: BorderSide(
                              color: themeModel.background,
                              width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(0),
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: themeModel.background,
                              width: 2)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(0),
                          borderSide: BorderSide(
                              color: themeModel.background,
                              width: 2))),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  child: PrimaryButton(
                    text: 'Proceed',
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
