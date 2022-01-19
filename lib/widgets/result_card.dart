import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:bmi_calculator_flutte/widgets/base_card.dart';
import 'package:flutter/material.dart';

class RestultCard extends StatelessWidget {
  const RestultCard({
    Key? key,
    required this.bmi,
    required this.score,
    required this.description,
  }) : super(key: key);

  final String bmi;
  final double score;
  final String description;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            bmi,
            style: AppTheme.resultTextStyle,
          ),
          Text(
            score.toStringAsFixed(2),
            style: AppTheme.bmiTextStyle,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
