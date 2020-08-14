import "package:flutter/material.dart";

import "theme.dart";

class BuildAppBar {
  bool _themeDark = true;
  ThemeData _themeSet = ThemeData.light();
  IconData _themeIcon = Icons.wb_sunny;

  AppBar buildBar(ThemeChanger _themeChanger, String title) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
            icon: !_themeDark ? Icon(Icons.wb_sunny) : Icon(Icons.cloud_queue),
            onPressed: () => themeUpdate(_themeChanger))
      ],
    );
  }

  void themeUpdate(ThemeChanger _themeChanger) {
    _themeDark = !_themeDark;
    if (_themeDark)
    {
      IconData _themeIcon = Icons.wb_sunny;
      _themeChanger.setTheme(ThemeData.light());
    }
    else
    {
      IconData _themeIcon = Icons.cloud_queue;
      _themeChanger.setTheme(ThemeData.dark());
    }
    print(_themeDark);

  }
}