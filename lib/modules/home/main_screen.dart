import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterblocks/modules/contact/contact_one/contact_one.dart';
import 'package:flutterblocks/modules/drawer/drawer_widget.dart';
import 'package:flutterblocks/store/theme/theme_store.dart';
import 'package:flutterblocks/utils/display_type.dart';
import 'package:flutterblocks/values/themes.dart';
import 'package:provider/provider.dart';

import 'theme_selector_item.dart';

class MainScreen extends StatelessObserverWidget {
  @override
  Widget build(BuildContext context) {
    final _themeStore = Provider.of<ThemeStore>(context);
    final DisplayType displayType = displayTypeOf(context);
    final Themes themes = Themes();
    return Scaffold(
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('FLUTTERBLOCKS'),
        actions: displayType == DisplayType.mobile
            ? []
            : [
                IconButton(
                  icon: Icon(
                    Icons.code,
                    color: Colors.white,
                  ),
                  onPressed: _viewCode,
                ),
              ]
          ..addAll(themes.themeList
              .map(
                (e) => GestureDetector(
                  onTap: () => _themeStore.switchTheme(e),
                  child: ThemeSelectorItem(
                    color: e.primaryColor,
                    isSelected: e == _themeStore.selectedTheme,
                  ),
                ),
              )
              .toList()),
      ),
//      body: BlogOne(),
      body: ContactOne(),
    );
  }

  void _viewCode() {}
}
