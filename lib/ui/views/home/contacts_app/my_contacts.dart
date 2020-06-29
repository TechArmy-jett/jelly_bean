import 'package:flutter/material.dart';
import 'package:jellybean/models/contact/contact.dart';
import 'package:jellybean/utils/utils.dart';

class ContactListContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'ME',
                  style: TextStyle(
                    fontFamily: AppStrings.robotoMedium,
                    color: Color.fromRGBO(37, 165, 225, 1),
                  ),
                ),

                Text(
                  '${Contact.contactList.length} contacts',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500]
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Divider(
              color: Color.fromRGBO(37, 165, 225, 1),
              height: 3,
              thickness: 1,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'All contacts',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                fontFamily: AppStrings.robotoMedium
              ),
            ),
          ),

          Divider(
            color: Color.fromRGBO(37, 165, 225, 1),
            height: 3,
            thickness: 1,
          ),

          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  child: _buildContactTile(Contact.contactList[index].name),
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
      ),
    );
  }

  Widget _buildContactTile(String name){
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
              name
          ),

          Container(
              child: Image(
                image: AssetImage(AppImages.avatar),
                height: 50,
                width: 50,
              )),
        ],
      ),
    ) ;
  }
}
