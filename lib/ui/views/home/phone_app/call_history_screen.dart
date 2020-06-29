import 'package:flutter/material.dart';
import 'package:jellybean/models/call.dart';
import 'package:jellybean/models/contact/contact.dart';
import 'package:jellybean/utils/utils.dart';

class CallHistoryScreenPhoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromRGBO(8, 19, 23, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              YBox(10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'CALL HISTORY',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: AppStrings.robotoMedium,
                    color: Color.fromRGBO(37, 165, 225, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Color.fromRGBO(37, 165, 225, 1),
                  thickness: 1,
                  height: 5,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: <Widget>[
                          Container(
                              child: Image(
                            image: AssetImage(AppImages.avatar),
                            height: 50,
                            width: 50,
                          )),

                          XBox(10),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                Call.callList[index].contactName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                Call.callList[index].phoneNumber,
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Call.callList[index].callStatus == 'outgoing'
                                      ? Icon(
                                          Icons.call_made,
                                          color: Colors.green,
                                          size: 16,
                                        )
                                      : Call.callList[index].callStatus ==
                                              'missed'
                                          ? Icon(
                                              Icons.call_missed,
                                              color: Colors.red,
                                              size: 16,
                                            )
                                          : Icon(
                                              Icons.call_made,
                                              color: Colors.blue,
                                              size: 16,
                                            ),
                                  XBox(5),
                                  Text(
                                    Call.callList[index].callTime,
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Divider(
                      color: Color.fromRGBO(37, 165, 225, 1),
                      thickness: 1,
                      height: 5,
                    ),
                  ),
                  itemCount: Call.callList.length,
                ),
              )
            ],
          )),
    );
  }
}
