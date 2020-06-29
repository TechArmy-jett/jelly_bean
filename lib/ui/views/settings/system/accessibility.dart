import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

import '../../../../nav.dart';

class AccessibilityScreen extends StatefulWidget {

  @override
  _AccessibilityScreenState createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState extends State<AccessibilityScreen> {
  bool largeText = false;

  bool powerButton = true;

  bool autoRotate= true;

  bool speakPassword = false;

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
                    InkWell(
                      onTap: () {
                        AndroidNavigator.onBackPressed();

                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 12,
                        color: Colors.white,
                      ),
                    ),
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
                      'Accessibility',
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

              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, ),
                      child: Text(
                        'SERVICES',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'ClockBack',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Off',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'QueryBack',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Off',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),

                    YBox(10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, ),
                      child: Text(
                        'SERVICES',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    ListCheckBoxTile(
                      tileName: 'Large text',
                      isChecked: largeText,
                      onTap: (){
                        setState(() {
                          largeText = !largeText;
                        });
                      },
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),

                    ListCheckBoxTile(
                      tileName: 'power button ends call',
                      isChecked: powerButton,
                      onTap: (){
                        setState(() {
                          powerButton = !powerButton;
                        });
                      },
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),

                    ListCheckBoxTile(
                      tileName: 'Auto-rotatee screen',
                      isChecked: autoRotate,
                      onTap: (){
                        setState(() {
                          autoRotate = !autoRotate;
                        });
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),


                    ListCheckBoxTile(
                      tileName: 'Speak passwords',
                      isChecked: speakPassword,
                      onTap: (){
                        setState(() {
                          speakPassword = !speakPassword;
                        });
                      },
                    ),


                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Enhanced web accessibility',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Not allowed',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Touch & hold delay',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Short',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
