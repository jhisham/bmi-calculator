import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  color: Color(0xFF8E8F99),
  fontSize: 18.0,
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
