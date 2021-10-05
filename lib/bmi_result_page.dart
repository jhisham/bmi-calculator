import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class BMIResult extends StatelessWidget {
  // const BMIResult({ Key key }) : super(key: key);

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
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  'Your Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1F33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'normal'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: kLabelFontSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '24.1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text('Normal BMI range:'),
                  Text('18.5 - 25 kg/m2'),
                  SizedBox(height: 5.0),
                  Text('You have a normal body weight. Good job!'),
                  SizedBox(height: 10.0),
                  TextButton(
                    onPressed: () {},
                    child: Text('save result'.toUpperCase()),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: kBottomContainerColor,
            width: double.infinity,
            height: kBottomContainerHeight,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Re-calculate your BMI".toUpperCase(),
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
