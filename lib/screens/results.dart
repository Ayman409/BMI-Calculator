import 'package:bmi/utils/constants.dart';
import 'package:bmi/wedgits/buttom_button.dart';
import 'package:bmi/wedgits/custom_container.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results(
      {super.key, this.bmiResult, this.resultText, this.interpretation});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 15),
                child: Text(
                  'Your Result',
                  style: kTextStyle.copyWith(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: CustomContainer(
              colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toString().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation.toString(),
                    style: klabelStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
              onTap: () {
                Navigator.pop(context);
              },
              textOfButton: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
