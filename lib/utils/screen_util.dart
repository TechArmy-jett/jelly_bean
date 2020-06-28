import 'package:flutter/material.dart';

class ScreenUtil {
  final BuildContext context;

  ScreenUtil(this.context);

  MediaQueryData get mediaQuery => MediaQuery.of(context);

  // screen height with respect to given percentage
  double screenHeight({double extent = 1}) => mediaQuery.size.height * extent;

  // screen width with respect to given percentage
  double screenWidth({double extent = 1}) => mediaQuery.size.width * extent;

  double statusBarHeight() => mediaQuery.padding.top;

  double bottomBarHeight() => mediaQuery.padding.bottom;
}

// horizontal spacing
class XBox extends StatelessWidget {
  final double _width;

  XBox(this._width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
    );
  }
}

// vertical spacing
class YBox extends StatelessWidget {
  final double _height;

  YBox(this._height);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
    );
  }
}