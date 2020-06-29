import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/double_tile_list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

class MessageSettingsScreen extends StatefulWidget {
  @override
  _MessageSettingsScreenState createState() => _MessageSettingsScreenState();
}

class _MessageSettingsScreenState extends State<MessageSettingsScreen> {

  bool oldMessages = true;
  bool manageSim = false;
  bool readReports = false;
  bool autoRetrieve = true;
  bool notif = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          height: kScreenHeight,
          width: kScreenWidth,
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                color: Color.fromRGBO(67, 67, 67, 1),
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
                    Image(
                      image: AssetImage(AppImages.message),
                      height: iconSize - 15,
                      width: iconSize - 15,
                    ),
                    XBox(5),
                    Text('Settings', style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium
                    ),)
,
                    Spacer(),

                    Icon(Icons.more_vert, color: Colors.white,size: 18,),

                  ],
                ),
              ),

              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text(
                        'STORAGE',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700]
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    YBox(5),

                    DoubleTileListCheckBoxBlack(
                      tileName: 'Delete Old messages',
                      subTitle: 'Delete old messages as limits are reached',
                      isChecked: oldMessages,
                      onTap: () {
                        setState(() {
                          oldMessages = !oldMessages;
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
                              'Text message limit',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '500 messages per conversation',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
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
                              'Multimedia message limit',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '500 messages per conversation',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
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

                    DoubleTileListCheckBoxBlack(
                      tileName: 'Delivery reports',
                      subTitle: 'Request a delivery report for each message',
                      isChecked: manageSim,
                      onTap: () {
                        setState(() {
                          manageSim = !manageSim;
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


                    DoubleTileListCheckBoxBlack(
                      tileName: 'Delivery reports',
                      subTitle: 'request a read report for each message',
                      isChecked: readReports,
                      onTap: () {
                        setState(() {
                          readReports = !readReports;
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


                    DoubleTileListCheckBoxBlack(
                      tileName: 'Auto-retrieve',
                      subTitle: 'Automatically retrieve messages',
                      isChecked: autoRetrieve,
                      onTap: () {
                        setState(() {
                          autoRetrieve = !autoRetrieve;
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

                    YBox(15),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Text(
                        'NOTIFICATIONS',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700]
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(
                        height: 5,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),

                    YBox(5),

                    DoubleTileListCheckBoxBlack(
                      tileName: 'Notifications',
                      subTitle: 'Display message notifications in status bar',
                      isChecked: notif,
                      onTap: () {
                        setState(() {
                          notif = !notif;
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
                              'Vibrate',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Never',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[700],
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
                        'Choose ringtone',
                        style: TextStyle(
                          fontSize: 14, color: Colors.black
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


            ],
          ),
        ),
      ),
    );
  }
}