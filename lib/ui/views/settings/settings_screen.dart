import 'package:flutter/material.dart';
import 'package:jellybean/utils/images.dart';
import 'package:jellybean/utils/utils.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: iconSize - 15,
                    width: iconSize - 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.settings)),
                    ),
                  ),

                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),

              Divider(
                height: 5,
                color: Colors.blue,
              ),

              // wirelss network
              Text(
                'WIRELESS & NETWORKS',
              ),

              Divider(
                height: 3,
                color: Colors.grey,
              ),

              Row(
                children: <Widget>[
                ],
              )
            ],
            ),
          ),
        ),
      ),
    );
  }
}
