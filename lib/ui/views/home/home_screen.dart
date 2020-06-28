import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: kScreenHeight,
            width: kScreenWidth,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                // google container
                Container(
                  height: 55,
                  width: kScreenWidth,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.search,
                        color: Colors.grey[300],
                      ),
                      XBox(5),
                      Text(
                        'Google',
                        style: TextStyle(color: Colors.grey[300], fontSize: 16),
                      )
                    ],
                  ),
                ),

                YBox(80),

                // quick actions pannel
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,
                    color: Colors.black,
                  ),
                ),

                YBox(40),

                // home screen apps

                // camera
                InkWell(
                  onTap: (){
                        
                      },
                                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  AppImages.camera,
                                ),
                              ),
                            ),
                          ),

YBox(8),

                          Text(
                            'Camera',
                            style: AppStyles.appNameTextStyle,
                          ),
                        ],
                      ),

                      // music
                      InkWell(
                        onTap: (){
                          
                        },
                                            child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.music,
                                  ),
                                ),
                              ),
                            ),

YBox(8),

                            Text(
                              'Music',
                              style: AppStyles.appNameTextStyle,
                            ),
                          ],
                        ),
                      ),

                      // gallery
                      InkWell(
                        onTap: (){
                          
                        },
                                            child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.gallery,
                                  ),
                                ),
                              ),
                            ),

YBox(8),

                            Text(
                              'Gallery',
                              style: AppStyles.appNameTextStyle,
                            ),
                          ],
                        ),
                      ),

                      // settings
                      InkWell(
                        onTap: (){
                          
                        },
                                            child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    AppImages.settings,
                                  ),
                                ),
                              ),
                            ),

YBox(8),

                            Text(
                              'Settings',
                              style: AppStyles.appNameTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                YBox(40),

                // divider
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Divider(
                    color: Colors.white,
                    height: 4,
                  ),
                ),

                // home screen apps

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // phone
                    InkWell(
                      onTap: (){
                        
                      },
                                          child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.phone,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // contact
                    InkWell(
                      onTap: (){
                        
                      },
                                          child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.contact,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // menu item
                    InkWell(
                      onTap: (){
                        print('menu item');
                      },
                                          child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                            YBox(8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                                Container(
                                  height: 6,
                                  width: 6,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // browser
                    InkWell(
                      onTap: (){

                      },
                                          child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.browser,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
