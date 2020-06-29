import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/double_tile_list_checkbox.dart';
import 'package:jellybean/ui/widgets/toggle_switch.dart';
import 'package:jellybean/utils/utils.dart';

class LocationAccessScreen extends StatefulWidget {
  @override
  _LocationAccessScreenState createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {

  bool gpsSatellite =  false;
  bool wifi = false;

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
                      onTap: () {},
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
                      'Location access',
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Access to my Location',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),

                                Text(
                                  'Let apps that have asked your permission use your location information',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),

                          ToggleSwitch(),
                        ],
                      ),
                    ),

                    YBox(10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text(
                        'LOCATION SOURCES',
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
                      tileName: 'GPS satellites',
                      subTitle: 'Let apps use GPS to pinpoint your location',
                      isChecked: gpsSatellite,
                      onTap: () {
                        setState(() {
                          gpsSatellite = !gpsSatellite;
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

                    DoubleTileListCheckBox(
                      tileName: 'WIFI & mobile network location',
                      subTitle: 'Let apps use Google\'s location faster.',
                      isChecked: wifi,
                      onTap: () {
                        setState(() {
                          wifi = !wifi;
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
