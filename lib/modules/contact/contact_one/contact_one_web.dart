import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterblocks/utils/display_type.dart';
import 'package:flutterblocks/widget/custom_button.dart';
import 'package:flutterblocks/widget/custom_text_field.dart';

class ContactOneWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DisplayType displayType = displayTypeOf(context);

    return Stack(
      children: [
        // TODO(Bhavik Makwana) Update Map with official package once available.
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.grey.shade200,
          child: Center(child: Icon(Icons.pin_drop)),
        ),
        AnimatedAlign(
          duration: Duration(milliseconds: 1000),
          alignment: displayType == DisplayType.mobile
              ? Alignment.center
              : Alignment.centerRight,
          child: ContactForm(),
        ),
      ],
    );
  }
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
