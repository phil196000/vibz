import 'package:vibz/Theme/thememodel.dart';

enum Actions { Increment }
class ThemeModelAction{}
class ThemeModelSucceededAction {
  final ThemeModel themeModel;

  ThemeModelSucceededAction(this.themeModel);
}