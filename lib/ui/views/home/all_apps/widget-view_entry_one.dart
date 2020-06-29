import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class WidgetEntryViewOne extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          YBox(55),

          Text(
            'No widgets available',
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontFamily: AppStrings.robotoMedium,
            ),
          ),
        ],
      )
    );
  }
}