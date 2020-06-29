import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class BrowserScreen extends StatelessWidget {
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
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: iconSize - 15,
                        width: iconSize - 15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.search)),
                        ),
                      ),
                      Text(
                        'https://www.google.com/',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                        height: iconSize - 15,
                        width: iconSize - 15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppImages.search)),
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                YBox(10),
                Row(
                  children: <Widget>[
                    Text(
                      'ALL',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                    XBox(5),
                    Text('IMAGES')
                  ],
                ),
                YBox(120),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'G',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'o',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'o',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'g',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'l',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text(
                      'e',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )
                  ],
                ),
                YBox(5),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(50.0),
                              ),
                            ),
                            suffixIcon: Icon(Icons.search)),
                      ),
                    )
                  ],
                ),
                YBox(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('Google offered in :')],
                ),
                YBox(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          'Hausa',
                          style: TextStyle(color: Colors.blue),
                        )),
                    Expanded(
                        child: Text(
                          'Igbo',
                          style: TextStyle(color: Colors.blue),
                        )),
                    Expanded(
                        child: Text(
                          'Ede Yoruba',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
                YBox(130),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[Text('Nigeria')],
                )
              ],
            )),
      ),
    );
  }
}