import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsCard extends StatefulWidget {
  const ButtonsCard();

  @override
  _ButtonsCardState createState() => _ButtonsCardState();
}

class _ButtonsCardState extends State<ButtonsCard> {
  int value;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'weight'.toUpperCase(),
          style: TextStyle(
            color: Color(0xFF8E8F99),
            fontSize: kLabelFontSize,
          ),
        ),
        Text(
          value.toString(),
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: kVariableTextfontSize,
              fontWeight: FontWeight.w900),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(18),
              ),
              onPressed: () {
                setState(() {
                  value--; // same as _weightValue -= 1
                });
              },
              child: Icon(
                FontAwesomeIcons.minus,
                size: 20.0,
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(18),
              ),
              onPressed: () {
                setState(() {
                  value++;
                });
              },
              child: Icon(
                FontAwesomeIcons.plus,
                size: 20.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
