// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class GithubButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      icon: Image.asset(
        'assets/ic_git_hub.png',
        height: 24,
        width: 24,
      ),
      label: Text('GitHub'),
      onPressed: () {
        if (kIsWeb) {
          html.window.open(
            'https://github.com/ibhavikmakwana/flutter_blocks',
            'new tab',
          );
        }
      },
    );
  }
}
