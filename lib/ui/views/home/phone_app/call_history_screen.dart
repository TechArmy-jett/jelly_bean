import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class CallHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(8, 19, 23, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            YBox(10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'ALL CONTACTS WITH PHONE NUMBERS',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: AppStrings.robotoMedium,
                  color: Color.fromRGBO(37, 165, 225, 1),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Color.fromRGBO(37, 165, 225, 1),
                thickness: 1,
                  height: 5,
              ),
            ),

          ],
        )
      ),
    );
  }
}