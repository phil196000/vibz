import 'package:flutter/material.dart';
import 'package:vibz/Theme/thememodel.dart';

import 'holder.dart';

class VerifyBoard extends StatelessWidget {
  ThemeModel themeModel = ThemeModel();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        // decoration: BoxDecoration(color: ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Holder(),
                  Holder(),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(color: themeModel.borderColor),
            color: themeModel.white),
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
