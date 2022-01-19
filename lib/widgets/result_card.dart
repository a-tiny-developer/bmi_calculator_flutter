import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:bmi_calculator_flutte/widgets/base_card.dart';
import 'package:flutter/material.dart';

class RestultCard extends StatelessWidget {
  const RestultCard({
    Key? key,
    required this.bmiCategory,
    required this.bmiValue,
    required this.bmiDescription,
  }) : super(key: key);

  final String bmiCategory;
  final double bmiValue;
  final String bmiDescription;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            bmiCategory,
            style: AppTheme.resultTextStyle,
          ),
          Text(
            bmiValue.toStringAsFixed(2),
            style: AppTheme.bmiTextStyle,
          ),
          Text(
            bmiDescription,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
