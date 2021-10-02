import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1F33);
const Color inactiveCardColor = Color(0xFF111328);
const Color activeCardTextColor = Color(0xFFFFFFFF);
const Color cardTextPrimaryColor = Color(0xFF8E8F99);
const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;
double _currentSliderValue = 10.0;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // set the selectedGender variable to Gender.male state
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      // ternary operator
                      color: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      child: IconContent(
                          icon: FontAwesomeIcons.mars, label: 'male'),
                    ),
                  ),
                ),
                // Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // set the selectedGender variable to Gender.female state
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      // ternary operator
                      color: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      child: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'female'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'height'.toUpperCase(),
                    style: TextStyle(
                      color: cardTextPrimaryColor,
                      fontSize: 18.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${_currentSliderValue.round()}',
                        style: TextStyle(
                          color: activeCardTextColor,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                          color: cardTextPrimaryColor,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 10.0,
                    max: 300.0,
                    thumbColor: bottomContainerColor,
                    activeColor: bottomContainerColor,
                    inactiveColor: Colors.grey[600],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
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
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFF8E8F99),
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          '74',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            OutlinedButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFF8E8F99),
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          '74',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                size: 20.0,
                              ),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            OutlinedButton(
                              child: Icon(
                                FontAwesomeIcons.plus,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            child: TextButton(
              child: Text(
                "Calculate your BMI".toUpperCase(),
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
