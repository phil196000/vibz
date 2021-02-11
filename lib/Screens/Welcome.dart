import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibz/Dart%20Assets/Background.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vibz/Theme/default.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';
import 'package:vibz/Widgets/Texts/DarkBlue.dart';
import 'package:vibz/Widgets/Texts/DarkBlueShade.dart';
import 'package:vibz/Widgets/Texts/Green.dart';
import 'package:vibz/Widgets/welcome/carouselSlider.dart';
import 'package:vibz/Widgets/welcome/holder.dart';
import 'package:vibz/Widgets/welcome/phonenumber.dart';
import 'package:vibz/Widgets/welcome/verify.dart';
import 'package:vibz/Widgets/welcome/verifyBoard.dart';
import 'package:vibz/main.dart';
import 'package:vibz/redux/AppState.dart';
import 'package:vibz/redux/actions.dart' as ReduxActions;

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _current = 0;
  ThemeModel themeModel = ThemeModel();

  // Future<void> saveColor(val) async {
  //   SharedPreferences _prefs = await SharedPreferences.getInstance();
  //   ThemeModel them = ThemeModel(val);
  //   // final SharedPreferences prefs = await _prefs;
  //   // final String counter = (_prefs.getString('email') ?? 'Hello');
  //   _prefs
  //       .setString(
  //         "background",
  //         json.encode({
  //           "red": them.background.red,
  //           "green": them.background.green,
  //           "blue": them.background.blue,
  //           "opacity": them.background.opacity
  //         }),
  //       )
  //       .then((value) => log('done'));
  // }

  @override
  void initState() {
    // TODO: implement initState
    log('welcome init');
    // getIt.isReady<Store>().then((value) {
    //   log('get it');
    //   log(getIt<Store>().state.toString());
    //   getIt<Store>().dispatch(ReduxActions.ThemeModelAction());
    // }).catchError((onError) => log(onError.toString()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          // log(state.themeModel.toString());
          return KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
            // log(isKeyboardVisible.toString());
            return Background(
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      CarouselOnboarding(
                        visible: false,
                      ),
                      Visibility(child: VerifyBoard()),
                      // Visibility(
                      //   visible: !isKeyboardVisible,
                      //   child:
                      Expanded(
                        child: Container(),
                        flex: isKeyboardVisible ? 1 : 1,
                      ),
                      // ),
                      Visibility(visible: false, child: PhoneNumberWidget()),
                      Verify(),
                      Visibility(
                        visible: false,
                        child: Expanded(
                          child: Container(),
                          flex: isKeyboardVisible ? 7 : 1,
                        ),
                      ),
                      Visibility(
                          visible: true,
                          child: Expanded(
                            child: Container(),
                            flex: isKeyboardVisible ? 7 : 1,
                          ))
                      //   // log(store.state.toString());
                      //   // Return a `VoidCallback`, which is a fancy name for a function
                      //   // with no parameters. It only dispatches an Increment action.
                      //   return (Color background) {
                      //     saveColor(background);
                      //     store.dispatch({
                      //       'action': ReduxActions.Actions.Increment,
                      //       "Theme": {"background": background}
                      //     });
                      //   };
                      // }, builder: (context, callback) {
                      //   return RaisedButton(
                      //     onPressed: () {
                      //       getIt.isReady<Store>().then((value) {
                      //         log('get it');
                      //         log(getIt<Store>().state.toString());
                      //         getIt<Store>().dispatch(ReduxActions.ThemeModelSucceededAction(ThemeModel(Colors.green)));
                      //       }).catchError((onError) => log(onError.toString()));
                      //     },
                      //     child: Text('Blue'),
                      //   );
                      // }),
                      // new StoreConnector<AppState, Function>(converter: (store) {
                      //   // print(store.state);
                      //   // log(store.state.toString());
                      //   // Return a `VoidCallback`, which is a fancy name for a function
                      //   // with no parameters. It only dispatches an Increment action.
                      //   return (Color background) {
                      //     saveColor(background);
                      //     store.dispatch({
                      //       'action': ReduxActions.Actions.Increment,
                      //       "Theme": {"background": background}
                      //     });
                      //   };
                      // }, builder: (context, callback) {
                      //   return RaisedButton(
                      //     onPressed: () {
                      //       // AppState appstate = getIt.get<Store>().state;
                      //       // log(appstate.themeModel.background.blue.toString());
                      //       getIt.get<Store>().dispatch(ReduxActions.ThemeModelSucceededAction(ThemeModel(Colors.yellow)));
                      //       log('pressed');
                      //       // getIt.isReady<Store>().then((value) {
                      //       //   log('get it');
                      //       //   log(getIt<Store>().state.toString());
                      //       //   getIt<Store>().dispatch(ReduxActions.ThemeModelSucceededAction(ThemeModel(Colors.yellow)));
                      //       // }).catchError((onError) => log(onError.toString()));
                      //     },
                      //     child: Text('Default'),
                      //   );
                      // }),
                    ],
                  )),
            );
          });
        });
  }
}
