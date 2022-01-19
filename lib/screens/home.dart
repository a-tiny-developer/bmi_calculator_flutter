import 'package:bmi_calculator_flutte/widgets/calculate_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator_flutte/models/models.dart';
import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:bmi_calculator_flutte/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BaseCard(
                    onTap: () {
                      setState(() {
                        BMICaculator.selectedSex = Sex.male;
                      });
                    },
                    color: BMICaculator.selectedSex == Sex.male
                        ? AppTheme.activeCardColour
                        : AppTheme.inactiveCardColour,
                    child: const IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    onTap: () {
                      setState(() {
                        BMICaculator.selectedSex = Sex.female;
                      });
                    },
                    color: BMICaculator.selectedSex == Sex.female
                        ? AppTheme.activeCardColour
                        : AppTheme.inactiveCardColour,
                    child: const IconContent(
                      iconData: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SliderCard(
              currentHeight: BMICaculator.height,
              onChanged: (double value) {
                setState(() {
                  BMICaculator.height = value;
                });
              },
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BaseCard(
                    child: PlusMinusContent(
                      label: 'WEIGHT',
                      data: BMICaculator.weight,
                      onPressedMinus: () {
                        setState(() {
                          BMICaculator.weight--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          BMICaculator.weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    child: PlusMinusContent(
                      label: 'AGE',
                      data: BMICaculator.age,
                      onPressedMinus: () {
                        setState(() {
                          BMICaculator.age--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          BMICaculator.age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
            buttonTitle: 'CALCULATED',
          ),
        ],
      ),
    );
  }
}
