// the phone of the contact or person on the device
class Phone {

  // phone number entry
  final String phoneNumber;
  // type of phone number picked
  final String phoneType;

  // constructor
  Phone({this.phoneNumber,this.phoneType});

  // list of email types present
  static List<String> phoneTypes = [
    'HOME',
    // add others here later
  ];
}