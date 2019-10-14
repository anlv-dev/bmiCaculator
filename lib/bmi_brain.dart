import 'dart:math';

class BMIBrain {
  int hei;
  int wei;
  double _bmi;

  BMIBrain({this.hei, this.wei});

  String bmiResult() {
    _bmi = wei / pow(hei / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getEvaluationBMI() {
    String result;
    if (_bmi > 24.5) {
      result = 'Over weight';
    } else if (_bmi <= 24.5 && _bmi >= 18.5) {
      result = 'Normal';
    } else if (_bmi < 18.5) {
      result = 'Under weight';
    }
    return result;
  }

  String getInterpretation() {
    String result;
    if (_bmi > 24.5) {
      result = 'You have a higher than normal body weight. Try to exersize mor';
    } else if (_bmi <= 24.5 && _bmi >= 18.5) {
      result = 'You have a normal weight. Good job';
    } else if (_bmi < 18.5) {
      result = 'You have a lower normal weight. Eat more';
    }
    return result;
  }
}
