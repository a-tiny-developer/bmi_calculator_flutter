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
  Sex? selectedSex;

  double height = 170;
  int weight = 60;
  int age = 25;

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
                        selectedSex = Sex.male;
                      });
                    },
                    color: selectedSex == Sex.male
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
                        selectedSex = Sex.female;
                      });
                    },
                    color: selectedSex == Sex.female
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
              currentHeight: height,
              onChanged: (double value) {
                setState(() {
                  height = value;
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
                      data: weight,
                      onPressedMinus: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    child: PlusMinusContent(
                      label: 'AGE',
                      data: age,
                      onPressedMinus: () {
                        setState(() {
                          age--;
                        });
                      },
                      onPressedPlus: () {
                        setState(() {
                          age++;
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
