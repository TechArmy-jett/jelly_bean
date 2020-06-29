import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class AppsScreen extends StatelessWidget {

  List<String> _appNames = [
    'Browser',
    'Camera',
    'Gallery',
    'Email',
    'Music',
    'Phone',
    'Settings',
    'Search',
    'Contact',
    'Clock'
  ];

  List<String> _appImages = [
    AppImages.browser,
    AppImages.camera,
    AppImages.gallery,
    AppImages.email,
    AppImages.music,
    AppImages.phone,
    AppImages.settings,
    AppImages.search,
    AppImages.contact,
    AppImages.clock,
  ];

  List<String> _appSize = [
    '2.60MB',
    '20.00KB',
    '16.00MB',
    '102.00MB',
    '0.39',
    '1.00MB',
    '12.11MB',
    '6.33MB',
    '11.00MB',
    '21.03MB',
  ];
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
                      'Apps',
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
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemCount: _appImages.length,
                  separatorBuilder: (_, index) => YBox(20),
                  itemBuilder: (_, index){
                    return Row (
                      children: <Widget>[
                        Image(
                          image: AssetImage(_appImages.elementAt(index)),
                          height: 40,
                            width: 40,
                        ),

                        XBox(10),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              _appNames.elementAt(index),
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: AppStrings.robotoBold
                              ),
                            ),

                            YBox(3),

                            Text(
                              _appSize.elementAt(index),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[300],
                                  fontFamily: AppStrings.robotoBold
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
