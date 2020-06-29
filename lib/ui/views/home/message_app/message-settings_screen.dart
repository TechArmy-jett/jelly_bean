import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class MEssageSettingsScreen extends StatefulWidget {
  _MEssageSettingsScreen createState() => _MEssageSettingsScreen();
}

class _MEssageSettingsScreen extends State<MEssageSettingsScreen> {
  bool _value1 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      size: 10,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    XBox(5),
                    Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Text(''),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('STORAGE'),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Delete old messages'),
                              Text(
                                  'Delete old messages as limits  \nas reached'),
                            ],
                          ),
                          Checkbox(value: _value1, onChanged: _value1Changed)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Text messages limit'),
                              Text('500 messages per conversation'),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Multimedia message limit'),
                              Text('50 messages per conversation'),
                            ],
                          ),
                          Checkbox(value: _value1, onChanged: _value1Changed)
                        ],
                      ),
                      Text('TEXT (SMS) MESSAGES'),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Delivery reports'),
                              Text(
                                  'Request a delivery report for each\n message you send'),
                            ],
                          ),
                          Checkbox(value: _value1, onChanged: _value1Changed)
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Manage SIM card messages'),
                              Text('Manage messages stored on your SIM card'),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Text('MULTIMEDIA (MMS) MESSAGES'),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Delivery reports'),
                              Text(
                                  'Request a delivery report for each \nmessage you send'),
                            ],
                          ),
                          Checkbox(value: _value1, onChanged: _value1Changed)
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Read reports'),
                              Text(
                                  'Request a read report for each \nmessage you send'),
                            ],
                          ),
                          Checkbox(value: _value1, onChanged: _value1Changed)
                        ],
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
