import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';

class Pad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: <Widget>[
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.clear)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.sign)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.percent)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.divide)),
        SizedBox(width: 5),
      ]),
      SizedBox(height: 5),
      Row(children: <Widget>[
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.seven)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.eight)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.nine)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.multiply)),
        SizedBox(width: 5),
      ]),
      SizedBox(height: 5),
      Row(children: <Widget>[
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.four)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.five)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.six)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.subtract)),
        SizedBox(width: 5),
      ]),
      SizedBox(height: 5),
      Row(children: <Widget>[
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.one)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.two)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.three)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.add)),
        SizedBox(width: 5),
      ]),
      SizedBox(height: 5),
      Row(children: <Widget>[
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.zero)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.decimal)),
        SizedBox(width: 5),
        Expanded(child: CalculatorButton(operation: Values.equals)),
        SizedBox(width: 5),
      ])
    ]);
  }
}
