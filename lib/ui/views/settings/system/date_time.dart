import 'package:flutter/material.dart';
import 'package:jellybean/ui/widgets/double_tile_list_checkbox.dart';
import 'package:jellybean/utils/utils.dart';

class DateTimeScreen extends StatefulWidget {
  @override
  _DateTimeScreenState createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  bool isAutomaticDateTime = true;

  bool isAutomaticTimeZone = true;

  bool is24HourFormat = false;

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
                      'Date & Time',
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

                    DoubleTileListCheckBox(
                      tileName: 'Automatic date & time',
                      subTitle: 'Use network-provided time',
                      isChecked: isAutomaticDateTime,
                      onTap: (){
                        setState(() {
                          isAutomaticDateTime = !isAutomaticDateTime;
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
                      tileName: 'Automatic time zone',
                      subTitle: 'Use network-provided time zone',
                      isChecked: isAutomaticTimeZone,
                      onTap: (){
                        setState(() {
                          isAutomaticTimeZone = !isAutomaticTimeZone;
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
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Set date',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '6/28/2020',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Select time zone',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '9:46 PM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
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

                    DoubleTileListCheckBox(
                      tileName: 'Use 24-hour format',
                      subTitle: '1:00 pm',
                      isChecked: is24HourFormat,
                      onTap: (){
                        setState(() {
                          is24HourFormat = !is24HourFormat;
                        });
                      },
                    )

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
