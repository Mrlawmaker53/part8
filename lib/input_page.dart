import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomCardColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child:
                    Reusable_card(colour: activeCardColor, cardChild: Column(children: [Icon(FontAwesomeIcons.mars)],)),
              ),
              Expanded(
                child: Reusable_card(colour: activeCardColor, cardChild: Column(children: [],)),
              )
            ],
          )),
          Expanded(
            child: Reusable_card(colour: activeCardColor, cardChild: Column(children: [],)),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(child: Reusable_card(colour: activeCardColor, cardChild: Column(children: [],))),
              Expanded(
                child: Reusable_card(colour: activeCardColor, cardChild: Column(children: [],)),
              )
            ],
          )),
          Container(
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
              color: bottomCardColor)
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Reusable_card extends StatelessWidget {
  Reusable_card(this.colour, this.cardChild);
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: colour),
      margin: EdgeInsets.all(15.0),
    );
  }
}
