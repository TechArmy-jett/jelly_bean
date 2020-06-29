import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/setting_tile.dart';
import 'package:jellybean/ui/widgets/toggle_switch.dart';
import 'package:jellybean/utils/images.dart';
import 'package:jellybean/utils/utils.dart';

class SettingsScreen extends StatelessWidget {
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
                      'Settings',
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

              YBox(5),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                        // wireless network
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'WIRELESS & NETWORKS',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
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

                        // bluetooth
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SettingsTile(
                              tileName: 'Bluetooth',
                              imgPath: AppImages.bluetooth,
                              onTap: () {},
                            ),
                            ToggleSwitch(),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // data usage
                        SettingsTile(
                          tileName: 'Data usage',
                          imgPath: AppImages.dataUsage,
                          onTap: () {},
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // more
                        SettingsTile(
                          tileName: 'More...',
                          imgPath: '',
                          onTap: () {},
                        ),

                        YBox(20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'DEVICE',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
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

                        // sound
                        SettingsTile(
                          tileName: 'Sound',
                          imgPath: AppImages.sound,
                          onTap: () {},
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // display
                        SettingsTile(
                          tileName: 'Display',
                          imgPath: AppImages.display,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // storage
                        SettingsTile(
                          tileName: 'Storage',
                          imgPath: AppImages.storage,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // battery
                        SettingsTile(
                          tileName: 'Battery',
                          imgPath: AppImages.battery,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // apps
                        SettingsTile(
                          tileName: 'Apps',
                          imgPath: AppImages.apps,
                          onTap: () {},
                        ),

                        YBox(20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'PERSONAL',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
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

                        // location access
                        SettingsTile(
                          tileName: 'Location access',
                          imgPath: AppImages.locationAccess,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // security
                        SettingsTile(
                          tileName: 'Security',
                          imgPath: AppImages.security,
                          onTap: () {},
                        ),



                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // language and input
                        SettingsTile(
                          tileName: 'Language & input',
                          imgPath: AppImages.languageInput,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // backup and reset
                        SettingsTile(
                          tileName: 'Backup & reset',
                          imgPath: AppImages.backupReset,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        YBox(20),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'ACCOUNTS',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white
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


                        // location access
                        SettingsTile(
                          tileName: 'Add account',
                          imgPath: AppImages.addAccount,
                          onTap: () {},
                        ),

                        YBox(20),

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


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 5,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),

                        // date and time
                        SettingsTile(
                          tileName: 'Date & time',
                          imgPath: AppImages.datetime,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // accessibility
                        SettingsTile(
                          tileName: 'Accessibility',
                          imgPath: AppImages.accessibility,
                          onTap: () {},
                        ),

                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // developer options
                        SettingsTile(
                          tileName: 'Developer options',
                          imgPath: AppImages.developerOptions,
                          onTap: () {},
                        ),


                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Divider(
                            height: 3,
                            color: Colors.grey,
                          ),
                        ),

                        // about phone
                        SettingsTile(
                          tileName: 'About phone',
                          imgPath: AppImages.aboutPhone,
                          onTap: () {},
                        ),
                      ],
                    ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
