import 'package:flutter/material.dart';
import 'input_page.dart';
import 'bmi_result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          appBarTheme: AppBarTheme(
            color: Color(0xFF0A0D22),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/input_page': (context) => InputPage(),
          '/bmi_result': (context) => BMIResult(),
        });
  }
}
