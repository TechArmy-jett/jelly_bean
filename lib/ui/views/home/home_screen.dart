import 'package:flutter/material.dart';
import 'package:jellybean/main.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/views/home/all_apps/all_apps_screen.dart';
import 'package:jellybean/ui/views/home/calculator/calcilator_screen.dart';
import 'package:jellybean/ui/views/home/contacts_app/contact_screen.dart';
import 'package:jellybean/ui/views/home/gallery_app/gallery_screen.dart';
import 'package:jellybean/ui/views/home/message_app/message_screen.dart';
import 'package:jellybean/ui/views/home/music_app/music_screen.dart';
import 'package:jellybean/ui/views/home/phone_app/phone_screen.dart';
import 'package:jellybean/ui/views/settings/settings_screen.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool sound = false;
  bool bluetooth = true;
  bool location = true;
  bool battery = false;
  bool data = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          child: Stack(
            children: [
              Image(
                height: double.infinity,
                width: double.infinity,
                image: AssetImage(AppImages.wallpaper),
                fit: BoxFit.cover,
              ),
                  Container(
                  height: kScreenHeight,
                  width: kScreenWidth,
                  padding:
                      EdgeInsets.only(top: 20, bottom: 10.0, left: 10, right: 10),
                  child: Column(
                    children: <Widget>[
                      // google container
                      Container(
                        height: 35,
                        width: kScreenWidth,
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(83,96,90,1),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              color: Colors.grey[300],
                            ),
                            XBox(5),
                            Text(
                              'Google',
                              style: TextStyle(color: Colors.grey[300], fontSize: 16),
                            )
                          ],
                        ),
                      ),

                      YBox(40),

                      Text(
                        '09 : 23 PM',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: AppStrings.robotoBold

                        ),
                      ),

                      YBox(20),

                      // quick actions pannel
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 70,
                          color: Color.fromRGBO(26, 26, 26, 1),
                          child: Row(
                            children: <Widget>[

                              // sounc
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      sound = !sound;
                                    });
                        },
                                  child: Column(
                                    children: <Widget>[

                                      Spacer(),

                                      Image(
                                        image: AssetImage(AppImages.sound),
                                        height: 40,
                                          width: 40,
                                      ),

                                      Spacer(),

                                      Container(
                                        height: 4,
                                        color: sound ? Colors.blue : Colors.grey[700],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                width: 0.5,
                                color: Colors.grey[700],
                                height: 70,
                              ),

                              // bluetooth
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      bluetooth = !bluetooth;
                                    });
                                  },
                                  child: Column(
                                    children: <Widget>[

                                      Spacer(),

                                      Image(
                                        image: AssetImage(AppImages.bluetooth),
                                        height: 40,
                                        width: 40,
                                      ),

                                      Spacer(),

                                      Container(
                                        height: 4,
                                        color: bluetooth ? Colors.blue : Colors.grey[700],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                width: 0.5,
                                color: Colors.grey[700],
                                height: 70,
                              ),

                              // location
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      location = !location;
                                    });
                                  },
                                  child: Column(
                                    children: <Widget>[

                                      Spacer(),

                                      Image(
                                        image: AssetImage(AppImages.locationAccess),
                                        height: 40,
                                      ),

                                      Spacer(),

                                      Container(
                                        height: 4,
                                        color: location ? Colors.blue : Colors.grey[700],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                width: 0.5,
                                color: Colors.grey[700],
                                height: 70,
                              ),

                              // battery
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      battery = !battery;
                                    });
                                  },
                                  child: Column(
                                    children: <Widget>[

                                      Spacer(),

                                      Image(
                                        image: AssetImage(AppImages.battery),
                                        height: 40,
                                        width: 40,
                                      ),

                                      Spacer(),

                                      Container(
                                        height: 4,
                                        color: battery ? Colors.blue : Colors.grey[700],
                                      )
                                    ],
                                  ),
                                ),
                              ),


                              Container(
                                width: 0.5,
                                color: Colors.grey[700],
                                height: 70,
                              ),

                              // data usage
                              Expanded(
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      data = !data;
                                    });
                                  },
                                  child: Column(
                                    children: <Widget>[

                                      Spacer(),

                                      Image(
                                        image: AssetImage(AppImages.dataUsage),
                                        height: 40,
                                        width: 40,
                                      ),

                                      Spacer(),

                                      Container(
                                        height: 4,
                                        color: data ? Colors.blue : Colors.grey[700],
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      YBox(40),

                      // home screen apps

                      // camera
                      InkWell(
                        onTap: () {
                          AndroidNavigator.push(app: MessageScreen(), appName: "Messaging");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: iconSize,
                                  width: iconSize,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        AppImages.message,
                                      ),
                                    ),
                                  ),
                                ),
                                YBox(8),
                                Text(
                                  'Messaging',
                                  style: AppStyles.appNameTextStyle,
                                ),
                              ],
                            ),

                            // music
                            InkWell(
                              onTap: () {
                                AndroidNavigator.push(app: MusicScreen(), appName: "Music");
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: iconSize,
                                    width: iconSize,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          AppImages.music,
                                        ),
                                      ),
                                    ),
                                  ),
                                  YBox(8),
                                  Text(
                                    'Music',
                                    style: AppStyles.appNameTextStyle,
                                  ),
                                ],
                              ),
                            ),

                            // gallery
                            InkWell(
                              onTap: () {
                                AndroidNavigator.push(app: GalleryScreen(), appName: "Gallery");
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: iconSize,
                                    width: iconSize,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          AppImages.gallery,
                                        ),
                                      ),
                                    ),
                                  ),
                                  YBox(8),
                                  Text(
                                    'Gallery',
                                    style: AppStyles.appNameTextStyle,
                                  ),
                                ],
                              ),
                            ),

                            // settings
                            InkWell(
                              onTap: () {
                                AndroidNavigator.push(app: SettingsScreen(), appName: "Settings");
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: iconSize,
                                    width: iconSize,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          AppImages.settings,
                                        ),
                                      ),
                                    ),
                                  ),
                                  YBox(8),
                                  Text(
                                    'Settings',
                                    style: AppStyles.appNameTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      YBox(40),

                      // divider
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                        child: Divider(
                          color: Colors.white,
                          height: 4,
                        ),
                      ),

                      // home screen apps

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // phone
                          InkWell(
                            onTap: () {
                              AndroidNavigator.push(app: PhoneScreen(), appName: "Phone");
                            },
                            child: Container(
                              height: iconSize,
                              width: iconSize,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.phone,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // contact
                          InkWell(
                            onTap: () {
                              AndroidNavigator.push(app: ContactScreen(), appName: "Contact");
                            },
                            child: Container(
                              height: iconSize,
                              width: iconSize,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.contact,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // menu item
                          InkWell(
                            onTap: () {
                              AndroidNavigator.push(app: AllAppsScreen(), appName: "Contact");
                              print('menu item');
                            },
                            child: Container(
                              height: iconSize,
                              width: iconSize,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.menu,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Container(
                            height:  iconSize,
                            width: iconSize,
                          ),

                          // browser
                          InkWell(
                            onTap: () {
                              AndroidNavigator.push(app: CalculatorScreen(), appName: "Calculator");
                            },
                            child: Container(
                              height: iconSize,
                              width: iconSize,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.browser,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ],
          ),
        ),
      ),
    );
  }
}
