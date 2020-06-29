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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Adediran Goodness',
      phone: Phone(
          phoneNumber: '080 1212 4433',
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
      avatarPath: AppImages.avatar,
    ),


    Contact(
      name: 'Joseph Philips',
      phone: Phone(
          phoneNumber: '080 1332 0101',
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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Philips Jomiloju',
      phone: Phone(
          phoneNumber: '080 0101 00001',
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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Jegede Timilehin',
      phone: Phone(
          phoneNumber: '080 4566 1111',
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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Adekanbi Josteve',
      phone: Phone(
          phoneNumber: '080 2345 6789',
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
      avatarPath: AppImages.avatar,
    ),


    Contact(
      name: 'Anjola Racheal',
      phone: Phone(
          phoneNumber: '080 3333 3333',
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
      avatarPath: AppImages.avatar,
    ),


    Contact(
      name: 'Mary Jacobs',
      phone: Phone(
          phoneNumber: '080 1099 3333',
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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Toluwanimi Emmanuel',
      phone: Phone(
          phoneNumber: '080 9393 0101',
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
      avatarPath: AppImages.avatar,
    ),

    Contact(
      name: 'Akano Mary',
      phone: Phone(
          phoneNumber: '080 2222 4444',
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
      avatarPath: AppImages.avatar,
    ),
    // add other entry here
  ];
}
