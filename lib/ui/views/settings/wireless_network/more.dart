import 'package:flutter/material.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/views/settings/settings_screen.dart';
import 'package:jellybean/ui/widgets/list_checkbox.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class WirelessNetworkMoreScreen extends StatefulWidget {

  @override
  _WirelessNetworkMoreScreenState createState() => _WirelessNetworkMoreScreenState();
}

class _WirelessNetworkMoreScreenState extends State<WirelessNetworkMoreScreen> {
  bool airplaneMode = false;

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
                      'Wireless & networks',
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

              ListCheckBoxTile(
                tileName: 'Airplane mode',
                isChecked: airplaneMode,
                  onTap: (){
                  setState(() {
                    airplaneMode = !airplaneMode;
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'VPN',
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
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Mobile networks',
                  style: TextStyle(
                    fontSize: 14,
                    color: airplaneMode ? Colors.grey : Colors.white,
                  ),
                ),
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
        ),
      ),
    );
  }
}
