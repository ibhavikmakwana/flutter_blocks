import 'package:flutter/material.dart';
import 'package:flutterblocks/utils/display_type.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget webWidget;
  final Widget mobileWidget;

  const ResponsiveWidget({
    Key key,
    @required this.webWidget,
    @required this.mobileWidget,
  })  : assert(
          webWidget != null && mobileWidget != null,
          'Web And Mobile widgets cannot be null',
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final DisplayType displayType = displayTypeOf(context);
    switch (displayType) {
      case DisplayType.web:
        return webWidget;
        break;
      case DisplayType.mobile:
        return mobileWidget;
        break;
      default:
        return Container();
    }
  }
}
