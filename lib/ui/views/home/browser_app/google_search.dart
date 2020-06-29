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
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Container(

                      child: Material(
                        elevation: 1,
//                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: iconSize - 15,
                              width: iconSize - 15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(AppImages.search)),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.orange, width: 1.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white12, width: 1.0),
                                    ),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(1.0),
                                      ),
                                    ),
                                    hintText: 'Google',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    YBox(10),
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
            ],
          ),
        ),
      ),
    );
  }
}
