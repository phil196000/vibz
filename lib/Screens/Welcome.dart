import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime_type/mime_type.dart';
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
import 'package:vibz/Widgets/Buttons/GreenTextButton.dart';
import 'package:vibz/Widgets/Buttons/PrimaryButton.dart';
import 'package:vibz/Widgets/Texts/DarkBlue.dart';
import 'package:vibz/Widgets/Texts/DarkBlueShade.dart';
import 'package:vibz/Widgets/Texts/Green.dart';
import 'package:vibz/Widgets/welcome/carouselSlider.dart';
import 'package:vibz/Widgets/welcome/holder.dart';
import 'package:vibz/Widgets/welcome/phonenumber.dart';
import 'package:vibz/Widgets/welcome/profile.dart';
import 'package:vibz/Widgets/welcome/verify.dart';
import 'package:vibz/Widgets/welcome/verifyBoard.dart';
import 'package:vibz/main.dart';
import 'package:vibz/redux/AppState.dart';
import 'package:vibz/redux/actions.dart' as ReduxActions;

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  int _current = 0;
  ThemeModel themeModel = ThemeModel();
  Widget board = CarouselOnboarding(
    visible: true,
  );
//profile image
  List<int> imageData;
  String fileType;
  File _image;
  bool picked = false;
  final picker = ImagePicker();
//Animation Controller
  Tween _tween;
  Animation<double> animation;
  AnimationController controller;

  //Sign up steps
  String currentView = 'phone';

//TextEditing controllers
  TextEditingController verifyEditController = TextEditingController();

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
  //get image
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        String mimeType = mime(pickedFile.path);
        // if (mimeType == null) mimeType = 'text/plain; charset=UTF-8';
        //   // you can change the default content type
        //   // or, you can choose to send error message
        // response.headers.set('Content-Type', mimeType);
        fileType = mimeType;
        // log(mimeType);
        picked = true;
        _image.readAsBytes().then((value) => imageData = value);
      } else {
        print('No image selected.');
      }
    });
  }
  final _carouselTween =
      Tween<Offset>(begin: Offset(0, 0), end: Offset(-500, 0));
  final _verifyTween = Tween<Offset>(begin: Offset(500, 0), end: Offset(0, 0));

  @override
  void initState() {
    // TODO: implement initState
    log('welcome init');

    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    // animation = Tween<double>(begin: 0, end: 200).animate(controller)
    // animation = _sizeTween.animate(controller);
    // animation = _verifyTween.animate(controller);
    //   ..addStatusListener((status) {
    //     if (status == AnimationStatus.completed) {
    //       controller.reverse();
    //     } else if (status == AnimationStatus.dismissed) {
    //       controller.forward();
    //     }
    //   });
    // controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) {
          // log(state.themeModel.toString());
          return AnimatedBuilder(
              animation: animation,
              builder: (context, child) => KeyboardVisibilityBuilder(
                      builder: (context, isKeyboardVisible) {
                    // log(isKeyboardVisible.toString());
                    return Background(
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: Flex(
                            direction: Axis.vertical,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Transform.translate(
                                    offset: _carouselTween.evaluate(animation),
                                    child: CarouselOnboarding(),
                                  ),
                                  Transform.translate(
                                    offset: _verifyTween.evaluate(animation),
                                    child: VerifyBoard(),
                                  ),
                                ],
                              ),

                              Expanded(
                                child: Container(),
                                flex: isKeyboardVisible ? 1 : 1,
                              ),


                              Visibility(
                                child: WelcomeProfile(),
                                visible: true,
                              ),
                              Visibility(
                                  visible: false,
                                  child: PhoneNumberWidget(
                                    proceedPressed: () {
                                      // animation = _sizeTween.animate(controller);
                                      // animation = Tween<Offset>(
                                      //     begin: 0,
                                      //     end: -MediaQuery
                                      //         .of(context)
                                      //         .size
                                      //         .width *
                                      //         1)
                                      //     .animate(controller);
                                      controller.forward();
                                      // setState(() {
                                      //   // currentView = 'verify';
                                      //   board = VerifyBoard(
                                      //     visible: true,
                                      //   );
                                      // });
                                    },
                                  )),
                              Visibility(
                                child: Verify(
                                  verifyEditController: verifyEditController,
                                  resendPressed: () {},
                                  verifyPressed: () {
                                    log(verifyEditController.text);
                                  },
                                ),
                                visible: false,
                              ),
                              Visibility(
                                visible: currentView == 'phone' ? true : false,
                                child: Expanded(
                                  child: Container(),
                                  flex: isKeyboardVisible ? 7 : 1,
                                ),
                              ),
                              Visibility(
                                  visible: currentView == 'verify',
                                  child: Expanded(
                                    child: Container(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: GreenTextButton(
                                          text: 'Wrong Phone Number',
                                          onPressed: () {
                                            setState(() {
                                              currentView = 'phone';
                                            });
                                          },
                                        ),
                                      ),
                                    ),
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
                  }));
        });
  }
}
