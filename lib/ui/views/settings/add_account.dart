import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class AddAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
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
                  Text(
                    'Add an account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 5,
              color: Colors.blue,
              thickness: 2,
            ),
            YBox(10),

            Row(
              children: <Widget>[
                Image(
                  width: 40,
                  height: 40,
                  image: AssetImage(AppImages.email),
                ),

                XBox(4),

                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Divider(
                height: 5,
                color: Colors.grey,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
