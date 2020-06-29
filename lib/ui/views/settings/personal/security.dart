import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/double_tile_list_checkbox.dart';
import 'package:jellybean/ui/widgets/list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

import '../../../../nav.dart';

class SecurityScreen extends StatefulWidget {
  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {

  bool passwordVisible = true;
  bool unknowSources = true;
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
                      'Security',
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'SCREEN SECURITY',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
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
                              'Screen lock',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Slide',
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
                          horizontal: 10, vertical: 5),                      child: Text(
                        'Owner info',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                   YBox(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'ENCRYPTION',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
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
                              'Encrypt phone',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Require a numeric PIN or password to decrpt your phone each time you power it on',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),

YBox(15),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'PASSWORDS',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
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
                      tileName: 'Make passwords visible',
                      isChecked: passwordVisible,
                      onTap: (){
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ),

                    YBox(15),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'DEVICE ADMINISTRATION',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
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
                              'Device administrator',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'View or deactivate device adminstrators',
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

                    DoubleTileListCheckBox(
                      tileName: 'Unknown sources',
                      subTitle: 'Allow installation of apps from unknown sources',
                      isChecked: unknowSources,
                      onTap: () {
                        setState(() {
                          unknowSources = !unknowSources;
                        });
                      },
                    ),

                    YBox(15),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'CREDENTIAL STORAGE',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
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
                              'Trusted credentials',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Display trusted CA credentials',
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
                              'Install from SD card',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Install certificates from SD card',
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
                              'Clear credentials',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Install certificates from SD card',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
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
