import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'buttons_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // this enum is used with ternary operator
  Gender selectedGender;

  double _heightInCm = 60.0;
  int _weightInKg = 60;
  int _ageValue = 18;
  double bmi;

  // the commented out variables and method below are kept for reference to
  // compare between ternary operators and if-else statements which basically
  // achieves the same thing.

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void changeCardColor(GenderType gender) {
  //   // male card pressed
  //   if (gender == GenderType.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   } else if (gender == GenderType.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30.0,
          icon: Icon(Icons.menu),
        ),
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    // callback function to set state and pass in the selected gender
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    // ternary operator
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child:
                        IconContent(icon: FontAwesomeIcons.mars, label: 'male'),
                  ),
                ),
                // Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  child: ReusableCard(
                    //  callback function to set state and pass in the selected gender
                    onTapped: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    // ternary operator
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconContent(
                        icon: FontAwesomeIcons.venus, label: 'female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'height'.toUpperCase(),
                    style: TextStyle(
                      color: kCardTextPrimaryColor,
                      fontSize: kLabelFontSize,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${_heightInCm.round()}',
                        style: TextStyle(
                          color: kActiveCardTextColor,
                          fontSize: kVariableTextfontSize,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: kCardTextPrimaryColor,
                          fontSize: kLabelFontSize,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2.0,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 27.0),
                    ),
                    child: Slider(
                      value: _heightInCm,
                      min: 60.0,
                      max: 200.0,
                      thumbColor: kBottomContainerColor,
                      activeColor: kBottomContainerColor,
                      inactiveColor: Colors.grey[600],
                      onChanged: (double value) {
                        setState(() {
                          _heightInCm = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    child: ButtonsCard(
                        cardLabel: 'weight',
                        cardValue: _weightInKg,
                        firstButtonIcon: FontAwesomeIcons.minus,
                        secondButtonIcon: FontAwesomeIcons.plus,
                        firstButtonOnTap: () {
                          setState(() {
                            _weightInKg--;
                          });
                        },
                        secondButtonOnTap: () {
                          setState(() {
                            _weightInKg++;
                          });
                        }),
                  ),
                ),
                // Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    child: ButtonsCard(
                        cardLabel: 'age',
                        cardValue: _ageValue,
                        firstButtonIcon: FontAwesomeIcons.minus,
                        secondButtonIcon: FontAwesomeIcons.plus,
                        firstButtonOnTap: () {
                          setState(() {
                            _ageValue--;
                          });
                        },
                        secondButtonOnTap: () {
                          setState(() {
                            _ageValue++;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
            child: TextButton(
              onPressed: () {
                setState(() {
                  bmi = _weightInKg / (pow((_heightInCm / 100), 2));
                  print(bmi);
                  Navigator.pushNamed(context, '/bmi_result', arguments: bmi);
                });
              },
              child: Text(
                "Calculate your BMI".toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: kLabelFontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
