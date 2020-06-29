import 'package:flutter/material.dart';

import 'main.dart';

class AndroidNavigator {
  static goHome() {
    currentIndex = 0;
  }

  static push({@required Widget app, @required String appName}) {
    int existingIndex = -1;
    for (int i = 0; i < backStack.length; i++) {
      if (backStack[i].containsKey(appName)) {
        existingIndex = i;
        break;
      }
    }
    if (existingIndex != -1) {
      currentIndex = existingIndex;
    } else {
      if (backStack.isEmpty) {
        currentIndex = 0;
      } else {
        currentIndex = backStack.length;
      }
      backStack.add({appName: app});
    }
    state.setState(() {});
  }

  static popFrom({@required String appName}) {
    state.setState(() {
      backStack.removeWhere((app) => app.containsKey(appName));
      if (currentIndex != 0) {
        currentIndex--;
      }
    });
  }

  //First value is always Homeapp
  static int currentIndex = 0;
  static List<Map<String, Widget>> backStack = [];
  static Map<Widget, List<Map<String, Widget>>> appBackStack = {};
  static Map<Widget, int> appBackStackIndices = {};

  static Function onBackPressed = () {
    AndroidNavigator.goHome();
  };
//  static pushAppScreen({Widget app, Widget screen, String screenName}) {
//    if (appBackStack.containsKey(app)) {
//      appBackStack.update(app, (value) {
//        var list = value;
//        list.add({screenName: screen});
//        return list;
//      });
//    } else {
//      appBackStackIndices.putIfAbsent(app, () => 0);
//      appBackStack.putIfAbsent(
//        app,
//        () => [
//          {screenName: screen}
//        ],
//      );
//    }
//  }
//
//  static popAppScreen({Widget app, String screenName}) {
//    appBackStack.update(app, (value) {
//      var list = value;
//      list.removeWhere((element) => element.containsKey(screenName));
//      return list;
//    });
//  }
}
