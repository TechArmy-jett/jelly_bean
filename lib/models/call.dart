// phone calls made on the device
class Call {
  // name of call/ contact
  final String contactName;
  // phone number entry
  final String phoneNumber;
  // if contact exists on the device or not
  final bool isContactPresent;
  // status of the call ( can be either missed or received or outgoing)
  final String callStatus;

  // constructor
  Call(
      {this.contactName,
      this.phoneNumber,
      this.isContactPresent,
      this.callStatus});

  // call history dummy data
  static List<Call> callList = [
    Call(
      contactName: 'Josteve Adekanbi',
      phoneNumber: '080 0000 0000',
      isContactPresent: true,
      callStatus: 'outgoing'
    ),

    Call(
        contactName: '',
        phoneNumber: '080 1111 1111',
        isContactPresent: false,
        callStatus: 'missed'
    ),

    Call(
        contactName: 'Timilehin Jegede',
        phoneNumber: '080 0101 0101',
        isContactPresent: true,
        callStatus: 'received'
    ),

    Call(
        contactName: 'Adebayo Emmanuel',
        phoneNumber: '080 1100 0011',
        isContactPresent: true,
        callStatus: 'missed'
    ),
    // add others here
  ];
}
