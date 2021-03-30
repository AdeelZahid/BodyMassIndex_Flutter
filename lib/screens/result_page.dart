import 'package:body_mass_index_calculator/constants/constants.dart';
import 'package:body_mass_index_calculator/widgets/bottom_button.dart';
import 'package:body_mass_index_calculator/widgets/reusedable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage(
      {Key key,
      @required this.bmiResult,
      @required this.resultText,
      @required this.interpretation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiResult, style: kResultTextStyle),
                  Text(resultText.toUpperCase(), style: kBMITextStyle),
                  Text(
                    interpretation,
                    style: KBMIbodyText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            btnText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
