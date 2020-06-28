// phone calls made on the device
class Call {
  // name of call/ contact
  final String contactName;
  // phone number entry
  final String phoneNumber;
  // if contact exists on the device or not
  final bool isContactPresent;
  // status of the call (can be either missed or received or outgoing)
  final String callStatus;
  // call time entry
  final String callTime;

  // constructor
  Call(
      {this.contactName,
      this.phoneNumber,
      this.isContactPresent,
      this.callStatus,
      this.callTime,
      });

  // call history dummy data
  static List<Call> callList = [

    Call(
        contactName: 'Timilehin Jegede',
        phoneNumber: '080 0101 0101',
        isContactPresent: true,
        callStatus: 'received',
        callTime: '2 mins ago'
    ),

    Call(
        contactName: '',
        phoneNumber: '080 1111 1111',
        isContactPresent: false,
        callStatus: 'missed',
        callTime: '1 hour ago'
    ),

    Call(
        contactName: 'Josteve Adekanbi',
        phoneNumber: '080 0000 0000',
        isContactPresent: true,
        callStatus: 'outgoing',
        callTime: '2 days ago'
    ),

    Call(
        contactName: 'Adebayo Emmanuel',
        phoneNumber: '080 1100 0011',
        isContactPresent: true,
        callStatus: 'missed',
        callTime: '25th June, 2020'
    ),
    // add others here
  ];
}
