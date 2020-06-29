import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class SettingsTile extends StatelessWidget {
  final String tileName;
  final String imgPath;
  final VoidCallback onTap;

  SettingsTile({this.tileName, this.imgPath, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Row(
          children: <Widget>[
            Image(
              height: 25,
              width: 25,
              image: AssetImage(
                imgPath,
              ),
            ),
            XBox(8),
            Text(
              tileName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: AppStrings.robotoMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
