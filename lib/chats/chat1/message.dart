import 'package:marathon/chats/chat1/user.dart';

class Message {
  User sender, receiver, senders, receivers;
  String dataTime;
  String data;
  String body;

  Message(
      {this.sender,
      this.senders,
      this.receivers,
      this.receiver,
      this.dataTime,
      this.body,
      this.data});
}
