import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vibz/Theme/thememodel.dart';

import 'holder.dart';

class VerifyBoard extends StatelessWidget {
  final ThemeModel themeModel = ThemeModel();
  final bool visible;

  VerifyBoard({Key key, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // Visibility(
      //   visible: this.visible,
      //   child:
      //   Expanded(
      //     flex: 6,
      //     child:
          Container(
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
                Lottie.asset('lib/lottiefiles/verify.json',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 14,
                      color: const Color(0xff2b246b),
                    ),
                    children: [
                      TextSpan(
                        text: 'Are you sure the phone number \n(',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: '+233545285039',
                        style: TextStyle(
                          color: const Color(0xff9ca2da),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ') \nyou entered is yours....?\nWell, prove it',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(color: themeModel.borderColor),
                color: themeModel.white),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(bottom: 20),
          // ),
        // )
    );
  }
}
