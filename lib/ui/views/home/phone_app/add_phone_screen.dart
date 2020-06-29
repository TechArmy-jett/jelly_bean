import 'package:flutter/material.dart';
import 'package:jellybean/models/contact/contact.dart';
import 'package:jellybean/utils/utils.dart';

class ContactListPhoneApp extends StatelessWidget {
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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'ALL CONTACTS WITH PHONE NUMBERS',
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
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: _buildContactTile(Contact.contactList[index].name, Contact.contactList[index].phone.phoneNumber),
                    );
                  },
                  separatorBuilder: (_, index) => Divider(
                    color: Colors.grey,
                    height: 1,
                    thickness: 1,
                  ),
                  itemCount: Contact.contactList.length,
                ),
              ),

            ],
          )
      ),
    );
  }

  Widget _buildContactTile(String name,String number){
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Container(
              child: Image(
                image: AssetImage(AppImages.avatar),
                height: 50,
                width: 50,
              )),

          XBox(15),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                number,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
            ],
          ),

        ],
      ),
    ) ;
  }

}