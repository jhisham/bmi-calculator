import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color activeCardColor = Color(0xFF1D1F33);
const Color activeCardTextColor = Color(0xFFFFFFFF);
const Color cardTextPrimaryColor = Color(0xFF8E8F99);
const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.mars, size: 60.0),
                        SizedBox(height: 15.0),
                        Text(
                          'male'.toUpperCase(),
                          style: TextStyle(
                            color: Color(0xFF8E8F99),
                            fontSize: 18.0,
                          ),
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
                            Icon(FontAwesomeIcons.venus, size: 60.0),
                            SizedBox(height: 15.0),
                            Text(
                              'female'.toUpperCase(),
                              style: TextStyle(
                                color: Color(0xFF8E8F99),
                                fontSize: 18.0,
                              ),
                            )
                          ])),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: activeCardColor),
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

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
