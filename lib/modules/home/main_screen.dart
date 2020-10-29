import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterblocks/modules/content/content_one/content_one.dart';
import 'package:flutterblocks/modules/drawer/drawer_widget.dart';
import 'package:flutterblocks/values/index.dart';
import 'package:flutterblocks/store/home/main_store.dart';
import 'package:flutterblocks/store/theme/theme_store.dart';
import 'package:flutterblocks/utils/display_type.dart';
import 'package:flutterblocks/widget/github_button.dart';
import 'package:provider/provider.dart';

import 'theme_selector_item.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ThemeStore _themeStore;
  MainStore _mainStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _themeStore ??= Provider.of<ThemeStore>(context);
    _mainStore ??= Provider.of<MainStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    final DisplayType displayType = displayTypeOf(context);
    return Scaffold(
      floatingActionButton: GithubButton(),
      drawer: Drawer(
        child: DrawerWidget(mainStore: _mainStore),
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
          ..addAll(_themeStore.themes.themeList
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
      body: Observer(
        builder: (_) {
          switch (_mainStore.selectedIndex) {
            case 0:
              return BlogOne();
              break;
            case 1:
              return ContactOne();
              break;
            case 2:
              return ContentOne();
            default:
              return Center(
                child: Text('Coming Soon'),
              );
              break;
          }
        },
      ),
    );
  }

  void _viewCode() {}
}
