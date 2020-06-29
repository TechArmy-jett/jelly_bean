import 'package:flutter/material.dart';
import 'package:jellybean/nav.dart';
import 'package:jellybean/ui/views/home/clock_app/clock_screen.dart';
import 'package:jellybean/ui/views/home/contacts_app/contact_screen.dart';
import 'package:jellybean/ui/views/home/downloads/download_screen.dart';
import 'package:jellybean/ui/views/home/email_app/email_screen.dart';
import 'package:jellybean/ui/views/home/gallery_app/gallery_screen.dart';
import 'package:jellybean/ui/views/home/message_app/message_screen.dart';
import 'package:jellybean/ui/views/home/phone_app/phone_screen.dart';
import 'package:jellybean/ui/views/settings/settings_screen.dart';
import 'package:jellybean/utils/utils.dart';

class AppsEntryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.browser),
                      ),
                    ),
                  ),

                  YBox(3),

                  Text(
                    'Browser',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppStrings.robotoMedium,
                    ),
                  )
                ],
              ),

              Column(
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.calculator),
                      ),
                    ),
                  ),

                  YBox(3),

                  Text(
                    'Calculator',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppStrings.robotoMedium,
                    ),
                  )
                ],
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: ClockScreen(), appName: "Clock");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.clock),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Clock',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: EmailScreen(), appName: "Email");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.email),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),

          YBox(20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: GalleryScreen(), appName: "Clock");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.gallery),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Gallery',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: DownloadScreen(), appName: "Downloads");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.downloads),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Downloads',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

              Column(
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.gallery),
                      ),
                    ),
                  ),

                  YBox(3),

                  Text(
                    'Gallery',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppStrings.robotoMedium,
                    ),
                  )
                ],
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: MessageScreen(), appName: "Messaging");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.message),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Messaging',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),

          YBox(20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: ContactScreenContactApp(), appName: "Contact");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.contact),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: PhoneAppScreen(), appName: "Phone");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.phone),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Phone',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

              Column(
                children: <Widget>[
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.search),
                      ),
                    ),
                  ),

                  YBox(3),

                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontFamily: AppStrings.robotoMedium,
                    ),
                  )
                ],
              ),

              GestureDetector(
                onTap: (){
                  AndroidNavigator.push(app: SettingsScreen(), appName: "Settings");
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.settings),
                        ),
                      ),
                    ),

                    YBox(3),

                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),


        ],
      ),
    );
  }
}