import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class GoogleSearch extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                spreadRadius: 2,
                                blurRadius: 2
                            )
                          ]
                      ),
                      child: Material(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              Container(
                                height: iconSize - 15,
                                width: iconSize - 15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.search)),
                                ),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 5),
//                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(hintText: "Google"),
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.orange,
                                          width: 1.5
                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    YBox(10),

                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: iconSize - 15,
                    width: iconSize - 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.settings)),
                    ),
                  ),
                  XBox(4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      YBox(3),
                      Text(
                        'Application',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
