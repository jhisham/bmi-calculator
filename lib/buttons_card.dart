import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsCard extends StatelessWidget {
  ButtonsCard({
    @required this.cardLabel,
    @required this.cardValue,
    @required this.firstButtonIcon,
    @required this.secondButtonIcon,
    @required this.firstButtonOnTap,
    @required this.secondButtonOnTap,
  });

  final String cardLabel;
  final int cardValue;
  final IconData firstButtonIcon;
  final IconData secondButtonIcon;
  final Function firstButtonOnTap;
  final Function secondButtonOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cardLabel.toUpperCase(),
          style: TextStyle(
            color: Color(0xFF8E8F99),
            fontSize: kLabelFontSize,
          ),
        ),
        Text(
          cardValue.toString(),
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
              onPressed: firstButtonOnTap,
              child: Icon(
                firstButtonIcon,
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
              onPressed: secondButtonOnTap,
              child: Icon(
                secondButtonIcon,
                size: 20.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
