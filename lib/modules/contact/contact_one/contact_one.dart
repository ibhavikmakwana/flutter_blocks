import 'package:flutter/material.dart';
import 'package:flutterblocks/modules/contact/contact_one/contact_one_web.dart';
import 'package:flutterblocks/widget/responsive_widget.dart';

class ContactOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      webWidget: ContactOneWeb(),
      mobileWidget: ContactOneWeb(),
    );
  }
}
