import 'package:flutter/material.dart';
import 'package:jellybean/ui/views/home/contacts_app/favourites.dart';
import 'package:jellybean/ui/views/home/contacts_app/groups.dart';
import 'package:jellybean/ui/views/home/contacts_app/my_contacts.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: kScreenHeight,
          width: kScreenWidth,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Color.fromRGBO(37, 165, 225, 1),
                child: TabBar(
                  indicatorWeight: 5,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: [
                    Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [

                    GroupsScreen(),

                    MyContactsScreen(),

                    FavouritesScreen(),
                  ],
                  controller: _tabController,
                ),
              ),

              Container(
                height: 45,
                color: Color.fromRGBO(65, 65, 65, 1),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.white, size: 22,),

                    Icon(Icons.more_vert, color: Colors.white, size: 22,)
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
