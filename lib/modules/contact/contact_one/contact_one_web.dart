import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterblocks/utils/display_type.dart';
import 'package:flutterblocks/widget/custom_button.dart';
import 'package:flutterblocks/widget/custom_text_field.dart';
import 'package:google_maps/google_maps.dart';

class ContactOneWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DisplayType displayType = displayTypeOf(context);

    return Stack(
      children: [
        // TODO(Bhavik Makwana) Update Map with official package once available.
        Map(),
        Align(
          alignment: displayType == DisplayType.mobile
              ? Alignment.center
              : Alignment.centerRight,
          child: ContactForm(),
        ),
      ],
    );
  }

  Widget Map() {
    final IFrameElement _iframeElement = IFrameElement();
    _iframeElement.src =
        'https://www.google.com/maps/place/Googleplex/@37.4214972,-122.0846905,17z/data=!4m5!3m4!1s0x808fba02425dad8f:0x6c296c66619367e0!8m2!3d37.4219999!4d-122.0840575';
    _iframeElement.src =
        'https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=%C4%B0zmir+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed';
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    Widget _iframeWidget;
    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );

    return SizedBox(child: _iframeWidget);
  }

//  Widget getMap() {
//    String htmlId = "7";
//
//    // ignore: undefined_prefixed_name
//    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
//      final myLatlng = LatLng(37.4195468, -122.0825745);
//
//      final mapOptions = MapOptions()
//        ..zoom = 10
//        ..center = LatLng(37.4195468, -122.0825745);
//
//      final elem = DivElement()
//        ..id = htmlId
//        ..style.width = "100%"
//        ..style.height = "100%"
//        ..style.border = 'none';
//
//      final map = GMap(elem, mapOptions);
//
//      Marker(MarkerOptions()
//        ..position = myLatlng
//        ..map = map);
//
//      return elem;
//    });
//
//    return HtmlElementView(viewType: htmlId);
//  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 400.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        margin: const EdgeInsets.all(52.0),
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Feedback',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Post-ironic portland shabby chic echo park, banjo fashion axe',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              hint: 'Email',
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              hint: 'Message',
              maxLines: 4,
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Button',
              onPressed: () {},
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: Text(
                'Chicharrones blog helvetica normcore iceland tousled brook viral artisan.',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
