import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.black,
          padding: EdgeInsets.only(top: 10, bottom: 10.0, left: 10, right: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.supervisor_account,
                    color: Colors.white,
                  ),
                ],
              ),
              Divider(
                color: Colors.white,
              ),
              Text('ALL CONTACTS WITH PHONE NUMBERS', style: TextStyle(
                color: Colors.white
              ),),        Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              Expanded(
                  child: ListView(
                children: <Widget>[
                  Text(
                    'T',
                    style: TextStyle(color: Colors.white),
                  ),
                  Divider(
                    color: Colors.blue,
                    thickness: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('B'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('C'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('D'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('E'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text('F'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
              YBox(20),
            ],
          ),
        ),
      ),
    );
  }
}
