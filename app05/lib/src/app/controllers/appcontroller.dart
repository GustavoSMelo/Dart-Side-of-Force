import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppController instance = new AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

}
