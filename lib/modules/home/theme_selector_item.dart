import 'package:flutter/material.dart';

class ThemeSelectorItem extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ThemeSelectorItem({
    Key key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.white, width: 2.0),
      ),
      height: 24.0,
      width: 24.0,
      child: isSelected ? Icon(Icons.done, size: 16.0) : null,
    );
  }
}
