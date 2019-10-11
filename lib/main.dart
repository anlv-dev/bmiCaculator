import 'package:flutter/material.dart';

const Color colorReusableCard = Color(0xFF1E1F34);
const Color colorBottomContainer = Color(0xFFEA1556);
const double bottomContainerHeight = 80.0;

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090C23), //Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF090C23),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: colorReusableCard),
                ),
                Expanded(
                  child: ReusableCard(colour: colorReusableCard),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: colorReusableCard),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: colorReusableCard),
                ),
                Expanded(
                  child: ReusableCard(colour: colorReusableCard),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: colorBottomContainer,
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
