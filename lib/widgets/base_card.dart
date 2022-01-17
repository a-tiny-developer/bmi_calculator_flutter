import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    Key? key,
    this.color = AppTheme.activeCardColour,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: child,
    );
  }
}
