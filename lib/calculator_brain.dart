import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Delgado';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Sobrepeso, Trata de ejercitar mas';
    } else if (_bmi >= 18.5) {
      return 'Peso normal!';
    } else {
      return 'Peso muy bajo';
    }
  }
}
