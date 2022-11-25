import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  late double bmi;

  String calculateBmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi < 18.5) {
      return 'underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Healthy';
    } else if (bmi >= 24.9 && bmi < 30) {
      return 'overweight';
    } else if (bmi >= 30) {
      return 'Suffering from Obesity';
    }

    return 'null';
  }

  String getInterPretation() {
    if (bmi < 18.5) {
      return 'underweight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Healthy';
    } else if (bmi >= 24.9 && bmi < 30) {
      return 'overweight';
    } else if (bmi >= 30) {
      return 'Suffering from Obesity';
    }

    return 'null';
  }
}
