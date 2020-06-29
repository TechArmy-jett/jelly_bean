import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/calculator/Processes.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_activities.dart';
import 'package:jellybean/ui/views/home/calculator/Display.dart';
import 'package:jellybean/ui/views/home/calculator/calculator_pad.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  _CalculatorState createState() => _CalculatorState();
}

var act = Act();
var processor = Processor();



class _CalculatorState extends State<CalculatorScreen> {
  String _output;

  @override
  void initState() {
    act.listen((event) => processor.process(event));
    processor.listen((data) => setState(() {
          _output = data;
        }));
    processor.refresh();
    super.initState();
  }

  @override
  void dispose() {
    act.dispose();
    processor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    double buttonSize = 20;
    double displayHeight = 50;

    return Scaffold(
      backgroundColor: Color.fromARGB(196, 32, 64, 96),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Display(value: _output, height: displayHeight)),
            SizedBox(height: 10),
            Pad(),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
