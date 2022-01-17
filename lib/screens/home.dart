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
                        selectedSex = Sex.male;
                      });
                    },
                    child: BaseCard(
                      color: selectedSex == Sex.male
                          ? AppTheme.activeCardColour
                          : AppTheme.inactiveCardColour,
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
                        selectedSex = Sex.female;
                      });
                    },
                    child: BaseCard(
                      color: selectedSex == Sex.female
                          ? AppTheme.activeCardColour
                          : AppTheme.inactiveCardColour,
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
