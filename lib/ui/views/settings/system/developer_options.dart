import 'package:flutter/material.dart';
import 'package:jellybean/models/contact/contact.dart';
import 'package:jellybean/ui/widgets/double_tile_list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

import '../../../../nav.dart';

class DeveloperOptionsScreen extends StatefulWidget {
  @override
  _DeveloperOptionsScreenState createState() => _DeveloperOptionsScreenState();
}

class _DeveloperOptionsScreenState extends State<DeveloperOptionsScreen> {
  bool stayAwakeChecked = true;

  bool allowMockLocationsChecked = true;

  bool protectSdCardChecked = false;
  bool showTouchesChecked = true;
  bool pointerLocationChecked = false;
  bool showLayoutBounds = false;
  bool surfaceUpdates = false;
  bool usbDebuggingChecked = false;

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
                      'Developer Options',
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Take bug report',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
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
                              'Model number',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Desktop full backups aren\'t currently protected',
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
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    DoubleTileListCheckBox(
                      tileName: 'Stay awake',
                      subTitle: 'Screen will never sleep while charging',
                      isChecked: stayAwakeChecked,
                      onTap: () {
                        setState(() {
                          stayAwakeChecked = !stayAwakeChecked;
                        });
                      },
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
                              'HDCP checking',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Use HDCP checking for DRM content only',
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
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    DoubleTileListCheckBox(
                      tileName: 'Protect SD card',
                      subTitle: 'Apps must request permission to read SD card',
                      isChecked: protectSdCardChecked,
                      onTap: () {
                        setState(() {
                          protectSdCardChecked = !protectSdCardChecked;
                        });
                      },
                    ),
                    YBox(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'DEBUGGING',
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
                    DoubleTileListCheckBox(
                      tileName: 'USB debugging',
                      subTitle: 'Debug mode when USB is connected',
                      isChecked: usbDebuggingChecked,
                      onTap: () {
                        setState(() {
                          usbDebuggingChecked = !usbDebuggingChecked;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    DoubleTileListCheckBox(
                      tileName: 'Allow mock locations',
                      subTitle: 'Allow mock locations',
                      isChecked: allowMockLocationsChecked,
                      onTap: () {
                        setState(() {
                          allowMockLocationsChecked =
                              !allowMockLocationsChecked;
                        });
                      },
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
                              'Select debug app',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'No debug application set',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[300],
                              ),
                            ),
                          ]),
                    ),
                    YBox(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'INPUT',
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
                    DoubleTileListCheckBox(
                      tileName: 'Show touches',
                      subTitle: 'Show visual feedback for touches',
                      isChecked: showTouchesChecked,
                      onTap: () {
                        setState(() {
                          showTouchesChecked = !showTouchesChecked;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    DoubleTileListCheckBox(
                      tileName: 'Pointer location',
                      subTitle: 'Screen overlay showing current touch data',
                      isChecked: pointerLocationChecked,
                      onTap: () {
                        setState(() {
                          pointerLocationChecked = !pointerLocationChecked;
                        });
                      },
                    ),
                    YBox(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'DRAWING',
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
                    DoubleTileListCheckBox(
                      tileName: 'Show layout bounds',
                      subTitle: 'Show clip bounds, margins, etc.',
                      isChecked: showLayoutBounds,
                      onTap: () {
                        setState(() {
                          showLayoutBounds = !showLayoutBounds;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    DoubleTileListCheckBox(
                      tileName: 'Show surface update',
                      subTitle: 'Flash entire window surfaces when they update',
                      isChecked: surfaceUpdates,
                      onTap: () {
                        setState(() {
                          surfaceUpdates = !surfaceUpdates;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Divider(
                        height: 5,
                        thickness: 1,
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
