// the address of the contact or person on the device
class Address {

  // name of address entry
  final String addressName;
  // type of address picked
  final String addressType;

  // constructor
  Address({this.addressName,this.addressType});

  // list of email types present
  static List<String> addressTypes = [
    'HOME',
    // add others here later
  ];
}