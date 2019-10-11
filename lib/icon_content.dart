import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8E8E9B),
);

class IconContent extends StatelessWidget {
  IconContent({this.iconData, this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: _textStyle,
        )
      ],
    );
  }
}
