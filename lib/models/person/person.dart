import 'package:jellybean/models/person/person_address.dart';
import 'package:jellybean/models/person/person_email.dart';
import 'package:jellybean/models/person/person_phone.dart';

// a person also similar to a contact on the device
class Person {
  // name entry
  final String name;
  // phone entry
  final Phone phone;
  // email entry
  final Email email;
  // address entry
  final Address address;

  // constructor
  Person({this.name, this.phone, this.email, this.address});
}
