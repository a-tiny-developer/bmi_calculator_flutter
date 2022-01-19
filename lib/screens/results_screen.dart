import 'package:bmi_calculator_flutte/widgets/calculate_button.dart';
import 'package:bmi_calculator_flutte/widgets/result_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_flutte/models/models.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Your Result',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Expanded(
            child: RestultCard(
              bmiCategory: BMICaculator.bmiData.category,
              bmiValue: BMICaculator.bmiValue,
              bmiDescription: BMICaculator.bmiData.description,
            ),
          ),
          CalculateButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
