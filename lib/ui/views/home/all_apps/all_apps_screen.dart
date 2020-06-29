import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';

class AllAppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: Column(
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                      ],
                    ),
                  ],
                ),
              ),

              Expanded(
                child: PageView(
                  children: <Widget>[
                    AppsEntryView(),
                    WidgetEntryViewOne(),
                    WidgetEntryViewTwo(),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

class AppsEntryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}

class WidgetEntryViewOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}


class WidgetEntryViewTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
    );
  }
}



