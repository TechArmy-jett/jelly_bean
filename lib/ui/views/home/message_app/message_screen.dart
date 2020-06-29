import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.message),
                  XBox(5),
                  Text('Messaging')
                ],
              ),
              YBox(10),
              Row(
                children: <Widget>[
                  Icon(Icons.account_circle),
                  XBox(10),
                  Column(
                    children: <Widget>[
                      Text('Jegede Timilehin'),
                      YBox(10),

                      Text('Hello Brother')
                    ],
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Text('1:45AM')
                ],
              ),
              Expanded(child: Text('')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}