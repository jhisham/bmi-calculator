import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;
  String _category;
  String _message;

  String calculateBMI() {
    _bmi = weight / (pow((height / 100), 2));

    return _bmi.toStringAsFixed(1);
  }

  String bmiCategory() {
    if (_bmi > 18.4 && _bmi < 25.0) {
      _category = 'Normal';
    } else if (_bmi <= 18.4) {
      _category = 'Underweight';
    } else {
      _category = 'Obese';
    }
    return _category;
  }

  String bmiMessage() {
    if (_bmi > 18.4 && _bmi < 25.0) {
      _message =
          'Your are fit and healthy! Maintain what you\'re doing and you should be A-OK.';
    } else if (_bmi <= 18.4) {
      _message =
          'Looks like you\'re not eating properly. Put more food in that body to reach an ideal weight-to-height ratio.';
    } else {
      _message =
          'Aww, snap. Looks like you\'re overweight. Change your eating habit to get in shape!';
    }
    return _message;
  }
}
