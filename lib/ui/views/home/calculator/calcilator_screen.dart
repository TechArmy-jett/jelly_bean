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

class _CalculatorState extends State<CalculatorScreen> {
  String _output;

  @override
  void initState() {
    Act.listen((event) => Processor.process(event));
    Processor.listen((data) => setState(() {
          _output = data;
        }));
    Processor.refresh();
    super.initState();
  }

  @override
  void dispose() {
    Act.dispose();
    Processor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;

    double buttonSize = screen.width / 4;
//    double displayHeight = kScreenHeight;
    double displayHeight = screen.height - (buttonSize * 5) - (buttonSize);

    return Scaffold(
      backgroundColor: Color.fromARGB(196, 32, 64, 96),
      body: Container(
//          height: kScreenHeight,
//          width: kScreenWidth,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Display(value: _output, height: displayHeight),
                Pad()
              ])),
    );
  }
}
