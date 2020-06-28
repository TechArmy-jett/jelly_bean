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
  // time call was made
  final String callTime;
  // duration of the call (should be "00:00" if [callStatus] == "missed"
  final String callDuration;

  // constructor
  Call(
      {this.contactName,
      this.phoneNumber,
      this.isContactPresent,
      this.callStatus,
      this.callTime,
        this.callDuration,
      });

  // call history dummy data
  static List<Call> callList = [

    Call(
        contactName: 'Timilehin Jegede',
        phoneNumber: '080 0101 0101',
        isContactPresent: true,
        callStatus: 'received',
        callTime: '2 mins ago',
      callDuration: '34:02'
    ),

    Call(
        contactName: '',
        phoneNumber: '080 1111 1111',
        isContactPresent: false,
        callStatus: 'missed',
        callTime: '1 hour ago',
        callDuration: '00:00'
    ),

    Call(
        contactName: 'Josteve Adekanbi',
        phoneNumber: '080 0000 0000',
        isContactPresent: true,
        callStatus: 'outgoing',
        callTime: '2 days ago',
        callDuration: '02:24'
    ),

    Call(
        contactName: 'Adebayo Emmanuel',
        phoneNumber: '080 1100 0011',
        isContactPresent: true,
        callStatus: 'missed',
        callTime: '25th June, 2020',
        callDuration: '00:00'
    ),
    // add others here
  ];
}
