import 'package:bmi_calculator_flutte/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusMinusContent extends StatelessWidget {
  const PlusMinusContent({
    Key? key,
    required this.label,
    required this.data,
    required this.onPressedPlus,
    required this.onPressedMinus,
  }) : super(key: key);

  final String label;
  final int data;
  final VoidCallback onPressedPlus;
  final VoidCallback onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          data.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: onPressedMinus,
              iconData: FontAwesomeIcons.minus,
            ),
            const SizedBox(
              width: 10,
            ),
            RoundIconButton(
              onPressed: onPressedPlus,
              iconData: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}
