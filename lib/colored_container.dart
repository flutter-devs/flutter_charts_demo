import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  Color _color;

  ColoredContainer(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
    );
  }
}
