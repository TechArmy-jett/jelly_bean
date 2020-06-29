import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class AddMessageScreen extends StatelessWidget {
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
                  Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  Icon(Icons.message),
                  XBox(5),
                  Text('Jegede Timilehin'),
                  Expanded(child: Text('')),
                  Icon(Icons.call),
                  Icon(Icons.attach_file),
                  Icon(Icons.more_vert)
                ],
              ),
              Expanded(
                child: Text(''),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    children: <Widget>[Text('Hello Brother'), Text('1 : 34AM')],
                  ),
                  Icon(Icons.account_circle)
                ],
              ),
              YBox(10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Type message'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.send),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
