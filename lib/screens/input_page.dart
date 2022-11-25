// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/calculator_brain.dart';

import 'package:bmi/screens/results.dart';

import '../utils/constants.dart';
import '../wedgits/buttom_button.dart';
import '../wedgits/custom_container.dart';
import '../wedgits/custombutton.dart';
import '../wedgits/icon_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color femaleCardColor = kInactiveContainerColor;
  int height = 180;
  int weight = 60;
  int age = 16;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomContainer(
                    onPress: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    colour: isMale
                        ? kButtomcontainerColor
                        : kInactiveContainerColor,
                    cardChild: const CustomIcon(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                    child: CustomContainer(
                  onPress: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  cardChild: const CustomIcon(
                      icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  colour:
                      !isMale ? kButtomcontainerColor : kInactiveContainerColor,
                )),
              ],
            ),
          ),
          Expanded(
            child: CustomContainer(
              cardChild: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Height',
                      style: kTextStyle,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: sTextStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  Slider(
                    min: 130.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                  )
                ],
              ),
              colour: kActiveContainerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomContainer(
                  colour: kActiveContainerColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: sTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.add,
                            onpressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CustomContainer(
                  colour: kActiveContainerColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'AGE',
                        style: kTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: sTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onpressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          ButtomButton(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Results(
                          bmiResult: calc.calculateBmi(),
                          interpretation: calc.getInterPretation(),
                          resultText: calc.getResult(),
                        )),
              );
            },
            textOfButton: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
