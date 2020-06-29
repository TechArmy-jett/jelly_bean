import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class Display extends StatelessWidget {
  Display({Key key, this.value, this.height}) : super(key: key);

  final String value;
  final double height;

  String get _output => value.toString();

  double get _margin => (height / 10);

  final LinearGradient _gradient =
      const LinearGradient(colors: [Colors.black26, Colors.black45]);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .headline3
        .copyWith(color: Colors.white, fontWeight: FontWeight.w200);

    return Container(
      width: double.maxFinite,
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(gradient: _gradient),
      child: Text(
        _output,
        style: style,
        textAlign: TextAlign.right,
      ),
    );
  }
}
