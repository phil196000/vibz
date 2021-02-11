import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Buttons/GreenTextButton.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';
import 'package:vibz/Widgets/Texts/DarkBlue.dart';
import 'package:vibz/Widgets/Texts/Green.dart';
import 'package:vibz/Widgets/welcome/verifyInput.dart';

class Verify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeModel themeModel = ThemeModel();
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
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        // margin: EdgeInsets.only(top: 5),
                        child: VerifyInput()),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 25),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GreenTextButton(text: 'Resend Code',)
  ,                    PrimaryButton(
                        text: 'Verify',
                        onPressed: () {},
                      ),

                    ],
                  )
              ),


            ],
          ),
        ));
  }
}
