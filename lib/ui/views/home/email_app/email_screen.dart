import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class EmailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  XBox(5),
                  Text('Account setup')
                ],
              ),
              YBox(15),
              Column(
                children: <Widget>[
                  Text('You can set up email for most accounts in just a few steps'),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email address'
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                    ),
                  )
                ],
              ),
              YBox(5),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(onPressed: (){},child: Text('Manual setup'), ),
                  ),
                  XBox(5),
                  Expanded(
                    child: RaisedButton(onPressed: (){},child: Text('Next'), ),
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
