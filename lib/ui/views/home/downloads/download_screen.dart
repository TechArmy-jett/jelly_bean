import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class DownloadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: iconSize - 15,
                      width: iconSize - 15,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.downloads)),
                      ),
                    ),
                    XBox(4),
                    Text(
                      'Downloads',
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

              Center(
                child: Text(
                  'No download',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[300]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
