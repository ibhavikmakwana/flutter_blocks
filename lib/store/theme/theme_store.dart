import 'package:flutter/material.dart';
import 'package:flutterblocks/values/themes.dart';
import 'package:mobx/mobx.dart';

part 'theme_store.g.dart';

class ThemeStore = _ThemeStore with _$ThemeStore;

abstract class _ThemeStore with Store {
  _ThemeStore() {
    themes = Themes();
    selectedTheme = themes.themeList[0];
  }
  Themes themes;

  @observable
  ThemeData selectedTheme;

  @action
  void switchTheme(ThemeData themeData) => selectedTheme = themeData;

  @action
  void switchBrightness(Brightness brightness) =>
      selectedTheme = selectedTheme.copyWith(brightness: brightness);
}
