// The reducer, which takes the previous count and increments it in response
// to an Increment action.
import 'dart:developer';

import 'package:vibz/Theme/default.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/redux/AppState.dart';
import 'package:vibz/redux/actions.dart';

Map<String, dynamic> counterReducer(
    Map<String, dynamic> state, dynamic action) {
  if (action['action'] == Actions.Increment) {
    int stateCount = state['state'] + 1;

    state = {
      ...state,
      ...action,
      'state': stateCount,
    };
    return state;
  }

  return state;
}
AppState appStateReducer(AppState state,action){
  if(action is ThemeModelAction){
    ThemeModel themeModel = ThemeModel();
    return AppState(
      themeModel: themeModel
    );
  }else if(action is ThemeModelSucceededAction){
    return AppState(
      themeModel: action.themeModel
    );
  }
  // log('reducer');
  // log(state.themeModel.background.toString());
  return state;
}