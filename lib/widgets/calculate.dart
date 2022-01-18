import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  const Calculate({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: AppTheme.contrastColour,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            'CALCULATE',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
