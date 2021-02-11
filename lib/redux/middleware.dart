import 'dart:convert';
import 'dart:developer';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/redux/actions.dart';
import 'AppState.dart';

 ThemeChange(Store<AppState> store, action, NextDispatcher next) async{
   // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  if(action is ThemeModelSucceededAction){
store.dispatch( ThemeModelSucceededAction(action.themeModel));
    // SharedPreferences prefs = await _prefs;
    //
    // var background = prefs.getString('background') ?? null;
    // log('Shared Preference');
    // log(background.toString());
    // if (background != null) {
    //   var _background = json.decode(background);
    //   ThemeModel themeModel = ThemeModel(_background);
    //   store.dispatch(ThemeModelSucceededAction(themeModel));
    // }
  }
  next(action);
}