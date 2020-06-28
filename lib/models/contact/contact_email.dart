// the email of the contact or person on the device
class Email {

  // email address entry
  final String emailAddress;
  // type of email picked
  final String emailType;

  // constructor
  Email({this.emailAddress,this.emailType});

  // list of email types present
  static List<String> emailTypes = [
    'HOME',
    // add others here later
  ];
}