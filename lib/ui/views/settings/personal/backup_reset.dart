import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class BackupResetScreen extends StatelessWidget {

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
                          image: AssetImage(AppImages.settings)),
                    ),
                  ),
                  XBox(4),
                  Text(
                    'backup & reset',
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

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Text(
                    'PERSONAL DATA',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
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


                Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Factory data reset',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Erase all data on phone',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[300],
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
          ]),
        ),
      ),
    );
  }
}