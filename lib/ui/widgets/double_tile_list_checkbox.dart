import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';

class DoubleTileListCheckBox extends StatelessWidget {
  final String tileName;
  final String subTitle;
  final bool isChecked;
  final VoidCallback onTap;

  DoubleTileListCheckBox({this.tileName, this.subTitle, this.isChecked, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                tileName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              YBox(3),
              Text(
                tileName,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 35,
              width: 35,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300], width: 1.5),
                      ),
                    ),
                  ),
                  isChecked
                      ? Positioned(
                    top: 5,
                    left: 10,
                    child: Icon(
                      Icons.check,
                      size: 22,
                      color: Colors.blue,
                    ),
                  )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
