import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final Color _color;
  final Icon _icon;
  final Text _text;

  const CustomInkWell({
    super.key,
    required this._color,
    required this._icon,
    required this._text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon,
            _text,
          ],
        ),
      ),
    );
  }
}
