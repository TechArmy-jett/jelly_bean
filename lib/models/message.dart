// messages sent and received on the device

import 'contact/contact.dart';

class Message {
  // name of the recipient (can get this entry from the contact model if [isContactPresent] == true)
  final String recipientName;
  // if recipient is a number (can get this entry from the contact model if [isContactPresent] == true)
  final String recipientNumber;
  // body of the message
  final String messageBody;
  // time message was sent
  final String messageTime;
  // if the contact / number has an avatar (can get this entry from the contact model if [isContactPresent] == true)
  final bool hasAvatar;
  // if contact is on the device entry
  final bool isContactPresent;

  // constructor
  Message({
    this.recipientName,
    this.recipientNumber,
    this.messageBody,
    this.messageTime,
    this.hasAvatar,
    this.isContactPresent,
  });

  // dummy data to show for list of messages sent
  static List<Message> messageList = [

     // hard coded for now
    Message(
      recipientName: Contact.contactList[0].name,
      recipientNumber: Contact.contactList[0].phone.phoneNumber,
      messageBody: 'This is the message body',
      messageTime: '1:48AM',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: '',
      recipientNumber: '020 0000 1110',
      messageBody: 'Message body goes here',
      messageTime: '3:48AM',
      hasAvatar: false,
      isContactPresent: false,
    ),

  ];

}
