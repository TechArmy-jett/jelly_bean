import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';

class Pad extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: <Widget>[
        CalculatorButton(operation: Values.clear),
        CalculatorButton(operation: Values.sign),
        CalculatorButton(operation: Values.percent),
        CalculatorButton(operation: Values.divide),
      ]),
      Row(children: <Widget>[
        CalculatorButton(operation: Values.seven),
        CalculatorButton(operation: Values.eight),
        CalculatorButton(operation: Values.nine),
        CalculatorButton(operation: Values.multiply),
      ]),
      Row(children: <Widget>[
        CalculatorButton(operation: Values.four),
        CalculatorButton(operation: Values.five),
        CalculatorButton(operation: Values.six),
        CalculatorButton(operation: Values.subtract),
      ]),
      Row(children: <Widget>[
        CalculatorButton(operation: Values.one),
        CalculatorButton(operation: Values.two),
        CalculatorButton(operation: Values.three),
        CalculatorButton(operation: Values.add),
      ]),
      Row(children: <Widget>[
        CalculatorButton(operation: Values.zero),
        CalculatorButton(operation: Values.decimal),
        CalculatorButton(operation: Values.equals),
      ])
    ]);
  }
}
