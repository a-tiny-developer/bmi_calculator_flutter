import 'package:bmi_calculator_flutte/theme/app_theme.dart';
import 'package:flutter/material.dart';

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
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: BaseCard(),
                ),
                Expanded(
                  child: BaseCard(),
                ),
              ],
            ),
          ),
          const Expanded(
            child: BaseCard(),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: BaseCard(),
                ),
                Expanded(
                  child: BaseCard(),
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
