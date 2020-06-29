import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jellybean/utils/utils.dart';

class AddAlarmScreen extends StatefulWidget {
  @override
  _AddAlarmScreenState createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {

  bool isAlarmToggled = false;

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
                            image: AssetImage(AppImages.clock)),
                      ),
                    ),
                    XBox(4),
                    Text(
                      'Alarmss',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),

                    Spacer(),

                    Icon(Icons.add, color: Colors.white, size: 20,),
                    XBox(20),
                    Icon(Icons.more_vert, color: Colors.white, size: 20,),
                  ],
                ),
              ),
              Divider(
                height: 5,
                color: Colors.blue,
                thickness: 2,
              ),
              YBox(10),

              Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              isAlarmToggled = !isAlarmToggled;
                            });
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey[500], width: 1.5),
                                    ),
                                  ),
                                ),
                                isAlarmToggled
                                    ? Positioned(
                                  top: 5,
                                  left: 10,
                                  child: Icon(
                                    Icons.check,
                                    size: 22,
                                    color: Colors.blue,
                                  ),
                                )
                                    : SizedBox.shrink(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 50,
                        width: 1,
                        color: Colors.grey[600],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '8:30 AM',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: AppStrings.robotoMedium
                          ),
                        ),

                        YBox(5),

                        Text(
                          'Mon, Tue, Wed, Thu, Fri',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
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
