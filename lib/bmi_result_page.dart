import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';

class Result {
  final String bmiResult;
  final String bmiCategory;
  final String bmiMessage;

  Result({this.bmiResult, this.bmiCategory, this.bmiMessage});
}

class BMIResult extends StatelessWidget {
  static const routeName = '/bmiResult';

  @override
  Widget build(BuildContext context) {
    // extract the args from the current ModalRoute
    // settings and cast them as Result.
    final args = ModalRoute.of(context).settings.arguments as Result;

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
                        args.bmiCategory.toUpperCase(),
                        style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: kLabelFontSize,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    args.bmiResult,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 90.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Normal BMI range:',
                    style: TextStyle(
                      fontSize: kLabelFontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                      color: kLabelTextColor,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                      fontSize: kLabelFontSize,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    args.bmiMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: kLabelFontSize,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  TextButton(
                    onPressed: () {
                      print(args.bmiResult);
                    },
                    child: Text(
                      'save result'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 17.0,
                        letterSpacing: 1.0,
                        color: Colors.white,
                      ),
                    ),
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
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
