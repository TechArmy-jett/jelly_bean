import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/contacts_app/favourites.dart';
import 'package:jellybean/ui/views/home/contacts_app/groups.dart';
import 'package:jellybean/ui/views/home/contacts_app/my_contacts.dart';
import 'package:jellybean/ui/views/home/phone_app/add_phone_screen.dart';
import 'package:jellybean/ui/views/home/phone_app/call_history_screen.dart';
import 'package:jellybean/ui/views/home/phone_app/call_screen.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class PhoneAppScreen extends StatefulWidget {
  @override
  _PhoneAppScreenState createState() => _PhoneAppScreenState();
}

class _PhoneAppScreenState extends State<PhoneAppScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int tabIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    _tabController.addListener(() {
      setState(() {
       tabIndex = _tabController.index;
      });
    });

    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Color.fromRGBO(8, 19, 23, 1),
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.black,
                child: TabBar(
                  indicatorWeight: 5,
                  indicatorColor: Color.fromRGBO(37, 165, 225, 1),
                  controller: _tabController,
                  tabs: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.access_time,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CallScreenPhoneApp(),
                    CallHistoryScreenPhoneApp(),
                    ContactListPhoneApp(),
                  ],
                  controller: _tabController,
                ),
              ),
              Container(
                height: 45,
                color: Color.fromRGBO(65, 65, 65, 0.8),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 22,
                    ),
                    tabIndex == 0 ? InkWell(
                      onTap: (){

                      },
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 30,
                      ),
                    ) : tabIndex == 1 ? SizedBox.shrink() : InkWell(
                      onTap: (){},
                      child: Icon(Icons.person_add, color: Colors.white, size: 22,),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 22,
                    )
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
