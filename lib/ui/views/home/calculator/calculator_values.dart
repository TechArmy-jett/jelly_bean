import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';

enum Type { FUNCTION, OPERATOR, INTEGER }

class CalculatorValues {
  const CalculatorValues(this.value);

  final String value;

  static List<CalculatorValues> _activities = [
    Values.clear,
    Values.sign,
    Values.percent,
    Values.decimal
  ];
  static List<CalculatorValues> _operators = [
    Values.divide,
    Values.multiply,
    Values.subtract,
    Values.add,
    Values.equals
  ];

  String toString() => value;

  bool get isOperator => _operators.contains(this);

  bool get isFunction => _activities.contains(this);

  bool get isInteger => !isOperator && !isFunction;

  Type get type =>
      isFunction ? Type.FUNCTION : (isOperator ? Type.OPERATOR : Type.INTEGER);
}
