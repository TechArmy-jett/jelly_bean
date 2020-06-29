import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/all_apps/apps_view_entry.dart';
import 'package:jellybean/ui/views/home/all_apps/widget-view_entry_one.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class AllAppsScreen extends StatefulWidget {

  @override
  _AllAppsScreenState createState() => _AllAppsScreenState();
}

class _AllAppsScreenState extends State<AllAppsScreen> {
  PageController _pageController = PageController(initialPage: 0);

  double index = 0;

  @override
  Widget build(BuildContext context) {

    _pageController.addListener(() {
      setState(() {
        index = _pageController.page;
      });
    });

    return Scaffold(
      body: Center(
        child: Container(
            height: kScreenHeight,
            width: kScreenWidth,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Container(
                  height: 42,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // row
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'APPS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: AppStrings.robotoMedium
                                  ),
                                ),

                                YBox(10),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 4,
                                    width: 50,
                                    color:  index == 0 ? Color.fromRGBO(37, 165, 225, 1) : Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),

                          XBox(25),

                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'WIDGETS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: AppStrings.robotoMedium
                                  ),
                                ),

                                YBox(10),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 4,
                                    width: 50,
                                    color:  index == 1 ? Color.fromRGBO(37, 165, 225, 1) : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                     Padding(
                       padding: const EdgeInsets.only(left: 10, right: 10,),
                       child: Container(
                         height: 1,
                         color:  Color.fromRGBO(37, 165, 225, 1),
                       ),
                     )
                    ],
                  )
                ),

                YBox(25),

                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: <Widget>[
                      AppsEntryView(),
                      WidgetEntryViewOne(),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 5,
                        color: index == 0 ? Color.fromRGBO(37, 165, 225, 1) : Colors.black,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        color: index == 1 ? Color.fromRGBO(37, 165, 225, 1) : Colors.black,
                        height: 5,
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
