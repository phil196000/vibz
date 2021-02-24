import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';

class ProfilePictureMenu extends StatefulWidget {
  final Function close;

  const ProfilePictureMenu({Key key, this.close}) : super(key: key);
  @override
  _ProfilePictureMenuState createState() => _ProfilePictureMenuState();
}

class _ProfilePictureMenuState extends State<ProfilePictureMenu> {
  ThemeModel themeModel = ThemeModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(),
          FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: themeModel.background),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 70,
                      color: themeModel.white,
                    ),
                    Text(
                      'Choose Picture',
                      style: TextStyle(fontSize: 10, color: themeModel.white),
                    )
                  ],
                ),
              )),
          Spacer(),
          FlatButton(
              color: Colors.blue,
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: themeModel.borderColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 70,
                      color: themeModel.white,
                    ),
                    Text(
                      'Take Picture',
                      style: TextStyle(fontSize: 10, color: themeModel.white),
                    )
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(color: themeModel.white),
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                            size: 30,
                          ),
                          Text(
                            'Discard Image',
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      )),
                ),
                Expanded(
                    flex: 1,
                    child: FlatButton(
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        onPressed: this.widget.close,
                        color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(
                              'Close',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
