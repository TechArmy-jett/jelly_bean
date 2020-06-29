import 'package:flutter/material.dart';
import 'package:jellybean/models/message.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Image(
                      image: AssetImage(AppImages.message),
                      height: iconSize - 15,
                      width: iconSize - 15,
                    ),
                    XBox(5),
                    Text('Messaging', style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: AppStrings.robotoMedium
                    ),)
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (_, index) {
                    return _buildMessageTile(
                        index % 4 == 0
                            ? Message.messageList[index].recipientNumber
                            : Message.messageList[index].recipientName,
                        Message.messageList[index].messageBody,
                        Message.messageList[index].messageTime);
                  },
                  separatorBuilder: (_, index) => Divider(
                    color: Colors.grey,
                    height: 1,
                    thickness: 1,
                  ),
                  itemCount: Message.messageList.length,
                ),
              ),
              Container(
                height: 40,
                color: Color.fromRGBO(67, 67, 67, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
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

  Widget _buildMessageTile(
      String recipientName, String messageBody, String messageTime) {
    return Container(
      height: 50,
      width: kScreenWidth,
      color: Color.fromRGBO(234, 234, 234, 1),
      padding: EdgeInsets.only(right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
              child: Image(
            image: AssetImage(AppImages.avatar),
            height: 50,
            width: 50,
          )),
          XBox(5),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                recipientName,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontFamily: AppStrings.robotoMedium,
                ),
              ),
              Text(
                messageBody,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: AppStrings.robotoRegular,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              messageTime,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontFamily: AppStrings.robotoLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
