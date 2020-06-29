import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_values.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_activities.dart';

abstract class Values {
  static CalculatorValues clear = const CalculatorValues('C');
  static CalculatorValues sign = const CalculatorValues('±');
  static CalculatorValues percent = const CalculatorValues('%');
  static CalculatorValues divide = const CalculatorValues('÷');
  static CalculatorValues multiply = const CalculatorValues('x');
  static CalculatorValues subtract = const CalculatorValues('-');
  static CalculatorValues add = const CalculatorValues('+');
  static CalculatorValues equals = const CalculatorValues('=');
  static CalculatorValues decimal = const CalculatorValues('.');

  static CalculatorValues zero = const CalculatorValues('0');
  static CalculatorValues one = const CalculatorValues('1');
  static CalculatorValues two = const CalculatorValues('2');
  static CalculatorValues three = const CalculatorValues('3');
  static CalculatorValues four = const CalculatorValues('4');
  static CalculatorValues five = const CalculatorValues('5');
  static CalculatorValues six = const CalculatorValues('6');
  static CalculatorValues seven = const CalculatorValues('7');
  static CalculatorValues eight = const CalculatorValues('8');
  static CalculatorValues nine = const CalculatorValues('9');
}

class CalculatorButton extends StatelessWidget {
  CalculatorButton({this.operation});

  final CalculatorValues operation;

  Color get color {
    switch (operation.type) {
      case Type.FUNCTION:
        return Color.fromARGB(255, 96, 96, 96);

      case Type.OPERATOR:
        return Color.fromARGB(255, 32, 96, 128);

      case Type.INTEGER:
      default:
        return Color.fromARGB(255, 128, 128, 128);
    }
  }

  static dynamic _fire(CalculatorButton key) => Act.fire(Activities(key));

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 4;
    TextStyle style =
        Theme.of(context).textTheme.headline4.copyWith(color: Colors.white);

    return Container(
        width: (operation == Values.zero) ? (size * 2) : size,
        padding: EdgeInsets.all(2),
        height: size,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          color: color,
          elevation: 4,
          child: Text(operation.value, style: style),
          onPressed: () => _fire(this),
        ));
  }
}
