import 'package:jellybean/utils/images.dart';

import 'contact_address.dart';
import 'contact_email.dart';
import 'contact_phone.dart';

// a person also similar to a contact on the device
class Contact {
  // name entry
  final String name;
  // phone entry
  final Phone phone;
  // email entry
  final Email email;
  // address entry
  final Address address;
  // avatar of the contact
  final String avatarPath;

  // constructor
  Contact({this.name, this.phone, this.email, this.address,this.avatarPath});

  // dummy list of contact
  static List<Contact> contactList = [

    // creating a contact instance
    Contact(
      name: 'Kunle Akao',
      phone: Phone(
        phoneNumber: '080 0000 1111',
        phoneType: 'MOBILE'
      ),
      address:  Address(
        addressName: '2, Ontario, Canada',
        addressType: 'HOME',
      ),
      email: Email(
        emailAddress: 'kunle.akao@email.com',
        emailType: 'HOME'
      ),
      avatarPath: AppImages.avatar1,
    ),

    // add other entry here
  ];
}
