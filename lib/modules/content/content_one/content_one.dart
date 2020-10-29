import 'package:flutter/material.dart';
import 'package:flutterblocks/modules/contact/contact_one/contact_one_mobile.dart';
import 'package:flutterblocks/modules/contact/contact_one/contact_one_web.dart';
import 'package:flutterblocks/modules/content/content_one/content_one_mobile.dart';
import 'package:flutterblocks/modules/content/content_one/content_one_web.dart';
import 'package:flutterblocks/widget/responsive_widget.dart';

class ContentOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      webWidget: ContentOneWeb(),
      mobileWidget: ContentOneMobile(),
    );
  }
}
