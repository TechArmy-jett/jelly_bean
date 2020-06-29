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
              Container(
                height: 40,
                color: Color.fromRGBO(213, 213, 213, 1),
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage(AppImages.email),
                      height: iconSize - 15,
                      width: iconSize - 15,
                    ),
                    XBox(5),
                    Text(
                      'Account setup',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: AppStrings.robotoMedium),
                    )
                  ],
                ),
              ),
              YBox(15),
              Column(
                children: <Widget>[
                  Text(
                      'You can set up email for most accounts in just a few steps'),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'Email address'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  )
                ],
              ),
              YBox(20),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 25,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Manual setup'),
                      ),
                    ),
                  ),
                  XBox(10),
                  Expanded(
                    child: SizedBox(
                      height: 25,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Next'),
                      ),
                    ),
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
