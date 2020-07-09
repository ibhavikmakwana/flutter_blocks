import 'package:flutter/material.dart';
import 'package:flutterblocks/values/themes.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  static final Themes _themes = Themes();

  @observable
  ThemeData selectedTheme = _themes.themeList[0];

  @action
  void switchTheme(ThemeData themeData) => selectedTheme = themeData;
}
