import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Buttons/GreenTextButton.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';
import 'package:vibz/Widgets/Texts/DarkBlue.dart';
import 'package:vibz/Widgets/Texts/Green.dart';
import 'package:vibz/Widgets/welcome/verifyInput.dart';

class Verify extends StatelessWidget{
  ThemeModel themeModel = ThemeModel();
  final FocusNode focusNode = FocusNode();
  final TextEditingController verifyEditController;

   Verify({Key key, this.verifyEditController}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
          decoration: BoxDecoration(
              color: themeModel.greenBackgroundlight,
              border: Border.all(color: themeModel.borderColor),
              borderRadius: BorderRadius.circular(5)),
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.only(top: 15, bottom: 50, left: 20, right: 20),
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
                child: DarkBlueText(
                  fontSize: 12,
                  text: 'Enter verification code',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.84,
                        // margin: EdgeInsets.only(top: 5),
                        child: animatingBorders(context))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GreenTextButton(
                        text: 'Resend Code',
                      ),
                      PrimaryButton(
                        text: 'Verify',
                        onPressed: () {},
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }

  Widget animatingBorders(BuildContext context) {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      border: Border.all(color: themeModel.background, width: 2),
      borderRadius: BorderRadius.circular(5.0),
    );
    return PinPut(
      fieldsCount: 6,
      eachFieldHeight: 50.0,
      eachFieldWidth: MediaQuery.of(context).size.width * 0.13,
      withCursor: false,
      // onSubmit: (String pin) => _showSnackBar(pin),
      focusNode: focusNode,

      controller: this.verifyEditController,
      submittedFieldDecoration: pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(5.0),
          color: themeModel.borderColor),
      selectedFieldDecoration: pinPutDecoration,
      textStyle: TextStyle(
          color: themeModel.background,
          fontWeight: FontWeight.bold,
          fontSize: 20),
      followingFieldDecoration: pinPutDecoration.copyWith(
        borderRadius: BorderRadius.circular(5.0),
        color: themeModel.white,
        border: Border.all(
          width: 2,
          color: themeModel.background,
        ),
      ),
    );
  }
}

