import 'package:flutter/material.dart';

class ListCheckBoxTile extends StatelessWidget {
  final String tileName;
  final bool isChecked;
  final VoidCallback onTap;

  ListCheckBoxTile({this.tileName, this.isChecked, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            tileName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
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
