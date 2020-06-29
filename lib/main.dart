import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/views/home/message_app/message-settings_screen.dart';
import 'package:jellybean/ui/views/home/calculator/calcilator_screen.dart';
import 'package:jellybean/ui/views/home/contacts_app/add_contact_screen.dart';
import 'package:jellybean/ui/views/home/contacts_app/contact_screen.dart';
import 'package:jellybean/ui/views/home/email_app/email_screen.dart';
import 'package:jellybean/ui/views/home/home_screen.dart';
import 'package:jellybean/ui/views/home/message_app/add_message_screen.dart';
import 'package:jellybean/ui/views/home/message_app/message_screen.dart';
import 'package:jellybean/ui/views/home/browser_app/browser_screen.dart';
import 'package:jellybean/ui/views/home/phone_app/phone_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: BrowserScreen(),
    );
  }
}

MyHomePageState state = MyHomePageState();

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => state;
}

class MyHomePageState extends State<MyHomePage> {
  var navBarBorderRadius = BorderRadius.only(
    bottomRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
  );

  var statusBarBorderRadius = BorderRadius.only(
    topRight: Radius.circular(20),
    topLeft: Radius.circular(20),
  );

  @override
  void initState() {
    super.initState();
    AndroidNavigator.push(app: DemoHome(), appName: "home");
  }

  void toggleMinimize() {
    setState(() {
      isMinimized = !isMinimized;
    });
  }

  bool isMinimized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 20),
          width: 310,
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Icon(
                Icons.brightness_1,
                size: 15,
              ),
              SizedBox(height: 5),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: statusBarBorderRadius,
                          color: Color(0xff191D20),
                        ),
                        child: Row(
                          children: [],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.white,
                              width: double.maxFinite,
                              height: double.maxFinite,
                              child: AndroidNavigator
                                      .backStack[AndroidNavigator.currentIndex][
                                  AndroidNavigator
                                      .backStack[AndroidNavigator.currentIndex]
                                      .keys
                                      .toList()
                                      .first],
                            ),
                            Visibility(
                              visible: isMinimized,
                              child: GestureDetector(
                                onTap: () {
                                  print("Tapped");
                                  setState(() {
                                    isMinimized = false;
                                  });
                                },
                                child: Container(
                                  color: Colors.black54,
                                  child: AndroidNavigator.backStack.length ==
                                              1 ||
                                          (AndroidNavigator.backStack.length ==
                                                  2 &&
                                              AndroidNavigator.currentIndex ==
                                                  1)
                                      ? Center(
                                          child: Text(
                                            "No Recent Apps",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                        )
                                      : ListView(
                                          reverse: true,
                                          children:
                                              AndroidNavigator.backStack.map(
                                            (e) {
                                              String appName =
                                                  e.keys.toList().first;
                                              if (AndroidNavigator.backStack[
                                                      AndroidNavigator
                                                          .currentIndex]
                                                  .containsKey(appName)) {
                                                return SizedBox();
                                              }
                                              String appIconPath = "";
                                              if (appName == "home") {
                                                return SizedBox();
                                              }
                                              return Dismissible(
                                                key: UniqueKey(),
                                                dismissThresholds: {
                                                  DismissDirection.horizontal:
                                                      0.01
                                                },
                                                child: MinimizedChild(
                                                  app: e[appName],
                                                  appName: appName,
                                                  appIconPath: appIconPath,
                                                  onTap: () {
                                                    toggleMinimize();
                                                  },
                                                ),
                                                onDismissed: (direction) {
                                                  AndroidNavigator.popFrom(
                                                    appName: appName,
                                                  );
                                                },
                                              );
                                            },
                                          ).toList(),
                                        ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: navBarBorderRadius,
                          color: Color(0xff191D20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  AndroidNavigator.onBackPressed();
                                });
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              color: Colors.pink,
                            ),
                            SizedBox(width: 10),
                            RaisedButton(
                              onPressed: () {
                                setState(() {
                                  if (isMinimized) {
                                    toggleMinimize();
                                  } else {
                                    AndroidNavigator.goHome();
                                  }
                                });
                              },
                              child: Text(
                                "Home",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              color: Colors.pink,
                            ),
                            SizedBox(width: 10),
                            RaisedButton(
                              onPressed: () {
                                toggleMinimize();
                              },
                              child: Text(
                                "Minimize",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MinimizedChild extends StatelessWidget {
  final String appName;
  final String appIconPath;
  final Widget app;
  final Function() onTap;

  const MinimizedChild(
      {Key key, this.appName, this.appIconPath, this.app, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        AndroidNavigator.push(app: app, appName: appName);
      },
      child: Container(
        height: 100,
        width: 10,
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    appName,
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Colors.white,
                  width: 100,
                  height: 1,
                )
              ],
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  color: Colors.black38,
                  width: 120,
                  height: 120,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Container(),
                ),
                Positioned(
                  left: -7,
                  top: 3,
                  child: Icon(
                    Icons.apps,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DemoHome extends StatelessWidget {
  const DemoHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Wrap(
        children: [
          RaisedButton(
            onPressed: () {
              AndroidNavigator.push(app: AppOne(), appName: "App One");
            },
            child: Text("Launch App One"),
          ),
          SizedBox(width: 10),
          RaisedButton(
            onPressed: () {
              AndroidNavigator.push(app: AppTwo(), appName: "App Two");
            },
            child: Text("Launch App Two"),
          ),
          RaisedButton(
            onPressed: () {
              AndroidNavigator.push(app: AppThree(), appName: "App Three");
            },
            child: Text("Launch App Three"),
          )
        ],
      ),
    );
  }
}

class AppThree extends StatefulWidget {
  @override
  _AppThreeState createState() => _AppThreeState();
}

class _AppThreeState extends State<AppThree> {
  @override
  void initState() {
    super.initState();
    AndroidNavigator.onBackPressed = () {
      if (index == 1) {
        setState(() {
          index = 0;
          print(index);
        });
      } else {
        AndroidNavigator.goHome();
      }
    };
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
      Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    index = 1;
                    print(index);
                  });
                },
                child: Text("Go to next screen"),
              ),
              Text("Click above to change the screen")
            ],
          ),
        ),
      ),
      AppThreeDetails(
        name: "App Name",
      )
    ][index]);
  }
}

class AppThreeDetails extends StatelessWidget {
  final String name;

  const AppThreeDetails({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}

class AppOne extends StatelessWidget {
  const AppOne({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "This is an App Demo",
          style: TextStyle(color: Colors.green, fontSize: 20),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            "Click me and be happy",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.green,
        )
      ],
    );
  }
}

class AppTwo extends StatefulWidget {
  @override
  _AppTwoState createState() => _AppTwoState();
}

class _AppTwoState extends State<AppTwo> {
  double flutterLogoSize = 20;
  MaterialColor flutterLogoTextColor = Colors.red;
  FlutterLogoStyle flutterLogoTextStyle = FlutterLogoStyle.markOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 90,
            textColor: flutterLogoTextColor,
            style: flutterLogoTextStyle,
            colors: flutterLogoTextColor,
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text(
              "Animate",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: flutterLogoTextColor,
            onPressed: () {
              int randomSize = Random().nextInt(400);
              int randomColor = Random().nextInt(Colors.primaries.length);
              int randomStyle =
                  Random().nextInt(FlutterLogoStyle.values.length);
              setState(() {
                flutterLogoSize = randomSize.toDouble();
                print(flutterLogoSize);
                flutterLogoTextColor = Colors.primaries[randomColor];
                flutterLogoTextStyle = FlutterLogoStyle.values[randomStyle];
              });
            },
          )
        ],
      ),
    );
  }
}
