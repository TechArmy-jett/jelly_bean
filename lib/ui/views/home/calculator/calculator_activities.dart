import 'dart:async';
import 'package:jellybean/ui/views/home/calculator/calculator_keys_abstract.dart';

class Activities {
  Activities(this.key);

  final CalculatorButton key;
}

class Act {
   StreamController _controller = StreamController();

   Stream get _stream => _controller.stream;

   StreamSubscription listen(Function handler) =>
      _stream.listen(handler as dynamic);

   void fire(Activities event) => _controller.add(event);

   bool hasListener() => _controller.hasListener;

   dispose() => _controller.close();
}
