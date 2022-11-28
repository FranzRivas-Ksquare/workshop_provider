//HERE YOU WILL CREATE YOUR PROVIDER CLASS INHERIT TO CHANGE NOTIFIER
//DONT FORGET TO ADD THE NOTIFY LISTENERS AT THE END OF YOUR FUNCTIONS

import 'package:flutter/material.dart';
import 'package:provider_class/models/theme_model.dart';

ThemeModel day = ThemeModel(
    Colors.orangeAccent,
    Colors.white,
    const Icon(Icons.sunny),
    'images/sun_minecraft.png'
);
ThemeModel night = ThemeModel(
    Colors.black54,
    Colors.black45,
    const Icon(Icons.nightlight),
    'images/moon_minecraft.png'
);

class ThemeProvider extends ChangeNotifier {
  ThemeModel nowIs = day;

  void switcher(){
    nowIs = nowIs == day
        ? night
        : day;
    notifyListeners();
  }
}