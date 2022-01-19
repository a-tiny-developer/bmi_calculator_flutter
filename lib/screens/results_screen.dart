import 'package:bmi_calculator_flutte/widgets/calculate_button.dart';
import 'package:bmi_calculator_flutte/widgets/result_card.dart';
import 'package:flutter/material.dart';

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
        children: [
          Text(
            'Your Result',
            style: Theme.of(context).textTheme.headline1,
          ),
          const Expanded(
            child: RestultCard(
              bmi: 'OVERWEIGHT',
              score: 25.234,
              description:
                  'You have a higher than normal body weight, Try to exercise more.',
            ),
          ),
          CalculateButton(
            buttonTitle: 'RE-CALCULATED',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
