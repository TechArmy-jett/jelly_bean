import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class AddMessageScreen extends StatelessWidget {
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
                padding: EdgeInsets.only(right: 15),
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
                    Text(
                      'Messaging',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: AppStrings.robotoMedium),
                    ),

                    Spacer(),

                    Icon(Icons.attach_file, color: Colors.white,size: 18,),
                    XBox(15),
                    Icon(Icons.more_vert, color: Colors.white,size: 18,),
                  ],
                ),
              ),

              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'To',
                      hintStyle: TextStyle(
                        fontSize: 14,
                      ),
                      border: UnderlineInputBorder()
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  color: Color.fromRGBO(236, 236, 236, 0.5),
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type message',
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                        border: UnderlineInputBorder()
                      ),
                    ),),

                    XBox(15),

                    Icon(Icons.send, size: 22, color: Colors.grey,),
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
