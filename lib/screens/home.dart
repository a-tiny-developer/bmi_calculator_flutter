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
  Color maleCardColour = AppTheme.inactiveCardColour;
  Color femaleCardColour = AppTheme.inactiveCardColour;

  void updateColour(Sex sex) {
    switch (sex) {
      case Sex.male:
        maleCardColour = AppTheme.activeCardColour;
        femaleCardColour = AppTheme.inactiveCardColour;
        break;
      case Sex.female:
        maleCardColour = AppTheme.inactiveCardColour;
        femaleCardColour = AppTheme.activeCardColour;
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Sex.male);
                      });
                    },
                    child: BaseCard(
                      color: maleCardColour,
                      child: const IconContent(
                        iconData: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Sex.female);
                      });
                    },
                    child: BaseCard(
                      color: femaleCardColour,
                      child: const IconContent(
                        iconData: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BaseCard(
              child: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BaseCard(
                    child: Container(),
                  ),
                ),
                Expanded(
                  child: BaseCard(
                    child: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppTheme.bottomContainerColour,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
