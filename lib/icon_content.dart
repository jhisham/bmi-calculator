import 'package:flutter/material.dart';
import 'constants.dart';

const labelTextStyle = TextStyle(
  color: kLabelTextColor,
  fontSize: kLabelFontSize,
);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 60.0),
        SizedBox(height: 15.0),
        Text(
          label.toUpperCase(),
          style: labelTextStyle,
        ),
      ],
    );
  }
}
