import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutte/widgets/widgets.dart';

class SliderCard extends StatelessWidget {
  const SliderCard({
    Key? key,
    required this.currentHeight,
    required this.onChanged,
  }) : super(key: key);

  final double currentHeight;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HEIGHT',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                currentHeight.round().toString(),
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'cm',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Slider(
            min: 120,
            max: 220,
            divisions: 100,
            value: currentHeight,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
