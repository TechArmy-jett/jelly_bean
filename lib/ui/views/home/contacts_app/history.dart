import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class HistoryScreen extends StatelessWidget {
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
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    XBox(10),
                    Column(
                      children: <Widget>[
                        Text(
                          '08160885748',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.call_made,
                              color: Colors.lightGreen,
                              size: 15,
                            ),
                            XBox(5),
                            Text(
                              '0 mins ago',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        )
                      ],
                    ),
                    XBox(120),

                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Text(''),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
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
