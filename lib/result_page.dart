import 'package:flutter/material.dart';
import 'components/button_bottom.dart';
import 'components/reusable_card.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
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
                      'Normal',
                      style: kOnTopBMIResult,
                    ),
                    Text(
                      '18.9',
                      style: kNumberBMI,
                    ),
                    Text(
                      'You have a normal body weight. Good job',
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
