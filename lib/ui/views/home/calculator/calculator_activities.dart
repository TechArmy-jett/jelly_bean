import 'dart:async';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';

class Activities {
  Activities(this.key);

  final CalculatorButton key;
}

abstract class Act {
  static StreamController _controller = StreamController();

  static Stream get _stream => _controller.stream;

  static StreamSubscription listen(Function handler) =>
      _stream.listen(handler as dynamic);

  static void fire(Activities event) => _controller.add(event);

  static dispose() => _controller.close();
}
