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
      messageBody: 'This is the message body, let\'s see...',
      messageTime: '5:48AM',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[1].name,
      recipientNumber: Contact.contactList[1].phone.phoneNumber,
      messageBody: 'Hey Jo, can you please call me? ',
      messageTime: '1:48AM',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[2].name,
      recipientNumber: Contact.contactList[2].phone.phoneNumber,
      messageBody: 'I told you, let\'s meet up tomorrow..',
      messageTime: 'yesterday',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[3].name,
      recipientNumber: Contact.contactList[3].phone.phoneNumber,
      messageBody: 'Yay, Birthday in a few days',
      messageTime: 'yesterday',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[4].name,
      recipientNumber: Contact.contactList[4].phone.phoneNumber,
      messageBody: 'OMG, they gonna kill me, send cops',
      messageTime: 'yesterday',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[5].name,
      recipientNumber: Contact.contactList[5].phone.phoneNumber,
      messageBody: 'Thanks for stopping by Jo.',
      messageTime: 'june 27',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[0].name,
      recipientNumber: Contact.contactList[0].phone.phoneNumber,
      messageBody: 'Down for a BLM protest?',
      messageTime: 'june 27',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[6].name,
      recipientNumber: Contact.contactList[6].phone.phoneNumber,
      messageBody: 'Sent, check your Email.',
      messageTime: 'june 27',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[7].name,
      recipientNumber: Contact.contactList[7].phone.phoneNumber,
      messageBody: 'Down for a BLM protest?',
      messageTime: 'june 26',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[8].name,
      recipientNumber: Contact.contactList[8].phone.phoneNumber,
      messageBody: 'Down for a BLM protest?',
      messageTime: 'june 26',
      hasAvatar: true,
      isContactPresent: true,
    ),

    Message(
      recipientName: Contact.contactList[9].name,
      recipientNumber: Contact.contactList[9].phone.phoneNumber,
      messageBody: 'Yoo buddy, How is your health?',
      messageTime: 'june 25',
      hasAvatar: true,
      isContactPresent: true,
    ),

  ];

}
