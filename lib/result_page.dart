import 'package:flutter/material.dart';
import 'components/button_bottom.dart';
import 'components/reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.bmiTop,
      @required this.bmiBottom});
  final String bmiResult;
  final String bmiTop;
  final String bmiBottom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CACULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kYourResultStyle,
              ),
            )),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmiTop.toUpperCase(),
                      style: kOnTopBMIResult,
                    ),
                    Text(
                      bmiResult,
                      style: kNumberBMI,
                    ),
                    Text(
                      bmiBottom,
                      style: kBottomText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ButtonBottom(
                textButton: 'RE-CACULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
