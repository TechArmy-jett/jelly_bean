import 'dart:async';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_values.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_activities.dart';

abstract class Processor {

  static CalculatorValues _operator;
  static String _valA = '0';
  static String _valB = '0';
  static String _result;

  static StreamController _controller = StreamController();
  static Stream get _stream => _controller.stream;

  static StreamSubscription listen(Function handler) => _stream.listen(handler);
  static void refresh() => _fire(_output);

  static void _fire(String data) => _controller.add(_output);

  static String get _output => _result == null ? _equation : _result;

  static String get _equation => _valA
      + (_operator != null ? ' ' + _operator.value : '')
      + (_valB != '0' ? ' ' + _valB : '');

  static dispose() => _controller.close();

  static process(dynamic event) {

    CalculatorButton key = (event as Activities).key;
    switch(key.operation.type) {

      case Type.FUNCTION:
        return handleFunction(key);

      case Type.OPERATOR:
        return handleOperator(key);

      case Type.INTEGER:
        return handleInteger(key);
    }
  }

  static void handleFunction(CalculatorButton key) {

    if (_valA == '0') { return; }
    if (_result != null) { _condense(); }

    Map<CalculatorValues, dynamic> table = {
      Values.clear: () => _clear(),
      Values.sign: () => _sign(),
      Values.percent: () => _percent(),
      Values.decimal: () => _decimal(),
    };

    table[key.operation]();
    refresh();
  }

  static void handleOperator(CalculatorButton key) {

    if (_valA == '0') { return; }
    if (key.operation == Values.equals) { return _calculate(); }
    if (_result != null) { _condense(); }

    _operator = key.operation;
    refresh();
  }

  static void handleInteger(CalculatorButton key) {

    String val = key.operation.value;
    if (_operator == null) { _valA = (_valA == '0') ? val : _valA + val; }
    else { _valB = (_valB == '0') ? val : _valB + val; }
    refresh();
  }

  static void _clear() {

    _valA = _valB = '0';
    _operator = _result = null;
  }

  static void _sign() {

    if (_valB != '0') { _valB = (_valB.contains('-') ? _valB.substring(1) : '-' + _valB); }
    else if (_valA != '0') { _valA = (_valA.contains('-') ? _valA.substring(1) : '-' + _valA); }
  }

  static String calcPercent(String x) => (double.parse(x) / 100).toString();

  static void _percent() {

    if (_valB != '0' && !_valB.contains('.')) { _valB = calcPercent(_valB); }
    else if (_valA != '0' && !_valA.contains('.')) { _valA = calcPercent(_valA); }
  }

  static void _decimal() {

    if (_valB != '0' && !_valB.contains('.')) { _valB = _valB + '.'; }
    else if (_valA != '0' && !_valA.contains('.')) { _valA = _valA + '.'; }
  }

  static void _calculate() {

    if (_operator == null || _valB == '0') { return; }

    Map<CalculatorValues, dynamic> table = {
      Values.divide: (a, b) => (a / b),
      Values.multiply: (a, b) => (a * b),
      Values.subtract: (a, b) => (a - b),
      Values.add: (a, b) => (a + b)
    };

    double result = table[_operator](double.parse(_valA), double.parse(_valB));
    String str = result.toString();

    while ((str.contains('.') && str.endsWith('0')) || str.endsWith('.')) {
      str = str.substring(0, str.length - 1);
    }

    _result = str;
    refresh();
  }

  static void _condense() {

    _valA = _result;
    _valB = '0';
    _result = _operator = null;
  }
}