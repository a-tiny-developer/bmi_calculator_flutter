import 'dart:math';

import 'gender.dart';

class BMICaculator {
  static Sex selectedSex = Sex.male;

  static double height = 170;
  static int weight = 60;
  static int age = 25;

  static double get bmiValue {
    return weight / pow(height / 100, 2);
  }

  static _BMIData get bmiData {
    if (bmiValue >= 25) {
      return const _BMIData.overweight();
    } else if (bmiValue > 18.5) {
      return const _BMIData.normal();
    } else {
      return const _BMIData.underweight();
    }
  }
}

class _BMIData {
  final String category;
  final String description;

  const _BMIData.overweight()
      : category = 'OVERWEIGHT',
        description =
            'You have a higher normal body weight. Try exercise more.';
  const _BMIData.normal()
      : category = 'NORMAL',
        description = 'You have anormal body weight. Good job!';
  const _BMIData.underweight()
      : category = 'UNDERWEIGHT',
        description =
            'You have a lower than normal body weight. You can eat a bit more.';
}
