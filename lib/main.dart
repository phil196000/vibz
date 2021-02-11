import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:vibz/Screens/Welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:redux/redux.dart';
import 'package:vibz/Theme/default.dart';
import 'package:vibz/Theme/thememodel.dart';
import 'package:vibz/redux/AppState.dart';
import 'package:vibz/redux/middleware.dart';
import 'package:vibz/redux/reducers.dart';
// This is our global ServiceLocator

GetIt getIt = GetIt.instance;

void main() {
  // Create your store as a final variable in the main function or inside a
  // State object. This works better with Hot Reload than creating it directly
  // in the `build` function.
  final store = new Store(
    appStateReducer,
    // initialState: <String, dynamic>{
    //   'state': 0,
    //   'Theme': colors,
    // },
    initialState: new AppState(themeModel: ThemeModel()),
  );
  getIt.registerSingleton<Store>(store, signalsReady: true);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  const MyApp({Key key, this.store}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final Store<Map<String, dynamic>> store;

  // _MyAppState(this.store);
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  // Future<Widget> _appStore;
  //
  // Future<Widget> appStore() async {
  //   SharedPreferences prefs = await _prefs;
  //
  //   var background = prefs.getString('background') ?? null;
  //
  //   Store savedstore;
  //   if (background != null) {
  //     var _background = json.decode(background);
  //     // ThemeModel(json.decode(background));
  //     savedstore = Store<Map<String, dynamic>>(counterReducer,
  //         initialState: <String, dynamic>{
  //           'state': 0,
  //           'Theme': {
  //             'background': Color.fromRGBO(
  //                 _background['red'],
  //                 _background['green'],
  //                 _background['blue'],
  //                 _background['opacity'])
  //           },
  //         });
  //   }
  //
  //   if (background != null)
  //     return StoreProvider<AppState>(
  //       child: MaterialApp(title: 'Flutter Demo', home: Welcome()),
  //       store: savedstore,
  //     );
  //   return StoreProvider<AppState>(
  //     child: MaterialApp(title: 'Flutter Demo', home: Welcome()),
  //     store: widget.store,
  //   );
  // }
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    // _appStore = appStore();

    // return FutureBuilder<Widget>(
    //   builder: (context, snapshot) {
    //     return snapshot.data;
    //   },
    //   future: _appStore,
    // );
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _prefs,
      builder: (context, snapshot) {
        log(snapshot.data.toString());
        // Check for errors
        if (snapshot.hasError) {
          return Text('data');
        }

        // Once complete, show your application
        if (snapshot.hasData) {
          return StoreProvider<AppState>(
            child: MaterialApp(title: 'Flutter Demo', home: Welcome()),
            store: widget.store,
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
    // return StoreProvider<AppState>(
    //   child: MaterialApp(title: 'Flutter Demo', home: Welcome()),
    //   store: widget.store,
    // );
  }
}
