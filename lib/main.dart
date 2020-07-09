import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'modules/home/main_screen.dart';
import 'store/theme/theme_store.dart';

void main() {
  runApp(
    Provider(
      create: (_) => ThemeStore(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _themeStore = Provider.of<ThemeStore>(context);
    return Observer(
      name: 'main_app_observer',
      builder: (_) => MaterialApp(
        title: 'Flutter Blocks',
        debugShowCheckedModeBanner: false,
        theme: _themeStore.selectedTheme,
        home: MainScreen(),
      ),
    );
  }
}