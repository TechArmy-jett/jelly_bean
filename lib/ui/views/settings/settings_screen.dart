import 'package:flutter/material.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/views/settings/add_account.dart';
import 'package:jellybean/ui/views/settings/device/battery.dart';
import 'package:jellybean/ui/views/settings/device/display.dart';
import 'package:jellybean/ui/views/settings/device/sound.dart';
import 'package:jellybean/ui/views/settings/device/storage.dart';
import 'package:jellybean/ui/views/settings/personal/backup_reset.dart';
import 'package:jellybean/ui/views/settings/personal/language_input.dart';
import 'package:jellybean/ui/views/settings/personal/location_access.dart';
import 'package:jellybean/ui/views/settings/personal/security.dart';
import 'package:jellybean/ui/views/settings/system/about_phone.dart';
import 'package:jellybean/ui/views/settings/system/accessibility.dart';
import 'package:jellybean/ui/views/settings/system/date_time.dart';
import 'package:jellybean/ui/views/settings/system/developer_options.dart';
import 'package:jellybean/ui/views/settings/wireless_network/bluetooth.dart';
import 'package:jellybean/ui/views/settings/wireless_network/data_usage.dart';
import 'package:jellybean/ui/views/settings/wireless_network/more.dart';
import 'package:jellybean/ui/widgets/setting_tile.dart';
import 'package:jellybean/utils/images.dart';
import 'package:jellybean/utils/utils.dart';

import 'device/apps.dart';

class SettingsScreen extends StatefulWidget {


  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    AndroidNavigator.onBackPressed = (){
      if(index != 0){
        setState(() {
          index = 0;
        });
      }else{
        AndroidNavigator.goHome();
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: getBody(),
        ),
      ),
    );
  }

  Widget getBody(){
    switch(index){
      case 0: return settingsHome();
      case 2: return DataUsageScreen();
      case 3: return WirelessNetworkMoreScreen();
      case 4: return SoundScreen();
      case 5: return DisplayScreen();
      case 6: return BatteryScreen();
      case 7: return AppsScreen();
      case 8: return LocationAccessScreen();
      case 9: return SecurityScreen();
      case 10:return LanguageInputScreen();
      case 11:return BackupResetScreen();
      case 12:return AddAccountScreen();
      case 13:return DateTimeScreen();
      case 14: return AccessibilityScreen();
      case 15: return DeveloperOptionsScreen();
      case 16: return AboutPhoneScreen();
      default: return SizedBox();
    }
  }

  Column settingsHome() {
    return Column(
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
                  image: DecorationImage(image: AssetImage(AppImages.settings)),
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
                  style: TextStyle(fontSize: 13, color: Colors.white),
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
              SettingsTile(
                tileName: 'Bluetooth',
                imgPath: AppImages.bluetooth,
                onTap: () {
                },
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
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
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
                onTap: () {
                  setState(() {
                    index = 3;
                  });
                },
              ),

              YBox(20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'DEVICE',
                  style: TextStyle(fontSize: 13, color: Colors.white),
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
                onTap: () {
                  setState(() {
                    index = 4;
                  });
                },
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
                onTap: () {
                  setState(() {
                    index = 5;
                  });
                },
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
                onTap: () {
                },
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
                onTap: () {
                  setState(() {
                    index = 6;
                  });
                },
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
                onTap: () {
                  goto(7);
                },
              ),

              YBox(20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'PERSONAL',
                  style: TextStyle(fontSize: 13, color: Colors.white),
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
                onTap: () {
                  goto(8);

                },
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
                onTap: () {
                  goto(9);

                },
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
                onTap: () {
                  goto(10);

                },
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
                onTap: () {
                  goto(11);

                },
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
                  style: TextStyle(fontSize: 13, color: Colors.white),
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
                onTap: () {
                  goto(12);

                },
              ),

              YBox(20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'SYSTEM',
                  style: TextStyle(fontSize: 13, color: Colors.white),
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
                onTap: () {
                  goto(13);

                },
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
                onTap: () {
                  goto(14);

                },
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
                onTap: () {
                  goto(15);

                },
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
                onTap: () {
                  goto(16);

                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void goto(int indexTo) {
    setState(() {
      index = indexTo;
    });
  }
}
