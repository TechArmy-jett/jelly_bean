import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';

class GroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          YBox(50),
          Text(
            'NO groups.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          YBox(5),
          Text(
            'To create groups you need an account',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
          YBox(30),
          SizedBox(
            height: 40,
            width: 180,
            child: RaisedButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'Sign in to an account',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
