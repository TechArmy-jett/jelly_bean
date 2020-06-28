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

  // constructor
  Contact({this.name, this.phone, this.email, this.address});
}
