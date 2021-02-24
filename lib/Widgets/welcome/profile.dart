import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';

class WelcomeProfile extends StatelessWidget {
  final Function proceedPressed;
  final Function avatarPressed;
  final Function avatarCancel;
  final IconData avatarIcon;

  const WelcomeProfile(
      {Key key,
      this.proceedPressed,
      this.avatarPressed,
      this.avatarCancel,
      this.avatarIcon = Icons.camera_alt})
      : super(key: key);

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: this.avatarPressed,
                      child: DottedBorder(
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: themeModel.borderColor,
                            ),
                            Positioned(
                                bottom: -15,
                                right:-15,
                                child: FlatButton(
                                  onPressed: this.avatarCancel,
                                  // padding: EdgeInsets.all(10),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: themeModel.background,
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.15),
                                              offset: Offset(0, 5),
                                              blurRadius: 10,
                                              spreadRadius: 2)
                                        ]),
                                    child: Icon(
                                      this.avatarIcon,
                                      color: themeModel.white,
                                      // size: 25,
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        borderType: BorderType.Circle,
                        radius: Radius.circular(50),
                        padding: EdgeInsets.all(8),
                        dashPattern: [5, 8],
                        color: themeModel.borderColor,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextField(
                      style: TextStyle(
                          color: themeModel.background,
                          fontWeight: FontWeight.bold),
                      cursorColor: themeModel.background,
                      decoration: InputDecoration(
                          fillColor: themeModel.white,
                          filled: true,
                          hintText: "@nickname",
                          hintStyle: TextStyle(
                              color: themeModel.background,
                              fontWeight: FontWeight.normal),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: themeModel.background,
                                  width: 2)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: themeModel.background, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  style: BorderStyle.solid,
                                  color: themeModel.background,
                                  width: 2)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                  color: themeModel.background, width: 2))),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(top: 25),
                  child: PrimaryButton(
                    text: 'Done',
                    onPressed: this.proceedPressed,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
