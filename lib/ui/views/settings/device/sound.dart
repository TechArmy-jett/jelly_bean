import 'package:flutter/material.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/widgets/list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

class SoundScreen extends StatefulWidget {

  @override
  _SoundScreenState createState() => _SoundScreenState();
}

class _SoundScreenState extends State<SoundScreen> {
  bool isVibrateRingChecked = false;
  bool dialPadChecked = true;
  bool touchSoundChecked = false;
  bool screenLockChecked = false;
  bool vibrateTouchChecked = true;

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Sound',
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

                  // volumes
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Volumes',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                      ),
                    ),
                  ),

                  YBox(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        'CALL RINGTONE & VIBRATE',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Divider(
                    height: 5,
                    thickness: 1,
                    color: Colors.grey,
                  ),

                  // PHONE RINGTONE
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Phone ringtone',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Silent',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ]
                    ),
                  ),

                  ListCheckBoxTile(
                    tileName: 'Vibrate when ringing',
                    isChecked: isVibrateRingChecked,
                    onTap: (){
                      setState(() {
                        isVibrateRingChecked = !isVibrateRingChecked;
                      });
                    },
                  ),

                  YBox(15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'SYSTEM',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white
                      ),
                    ),
                  ),

                  Divider(
                    height: 5,
                    thickness: 1,
                    color: Colors.grey,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Default notification',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Silent',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ]
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
                    tileName: 'Dial pad touch tones',
                    isChecked: dialPadChecked,
                    onTap: (){
                      setState(() {
                        dialPadChecked = !dialPadChecked;
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


                  ListCheckBoxTile(
                    tileName: 'Touch sounds',
                    isChecked: touchSoundChecked,
                    onTap: (){
                      setState(() {
                        touchSoundChecked = !touchSoundChecked;
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


                  ListCheckBoxTile(
                    tileName: 'Screen lock sound',
                    isChecked: screenLockChecked,
                    onTap: (){
                      setState(() {
                        screenLockChecked = !screenLockChecked;
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

                  ListCheckBoxTile(
                    tileName: 'Vibrate on touch',
                    isChecked: vibrateTouchChecked,
                    onTap: (){
                      setState(() {
                        vibrateTouchChecked = !vibrateTouchChecked;
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
            ),
          ],
        ),
      )),
    );
  }
}
