import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        color: AppTheme.contrastColour,
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ),
    );
  }
}
