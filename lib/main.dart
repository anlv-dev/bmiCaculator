import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  child: ReusableCard(
                    childCard: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: colorReusableCard,
                  ),
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

class IconContent extends StatelessWidget {
  IconContent({this.iconData, this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(fontSize: 18, color: Color(0xFF8E8E9B)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.childCard});
  final Color colour;
  final childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
