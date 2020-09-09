import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final int maxLines;
  final String hint;

  const CustomTextField({Key key, this.maxLines, this.hint}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
  }
}
