import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marathon/chats/chat1/conversion.dart';
import 'package:marathon/chats/chat1/message.dart';

class ChatScreen extends StatefulWidget {
  final Conversion conversation;
  final String name;

  ChatScreen(this.conversation, this.name);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _key = GlobalKey<FormState>();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFef1385),
                  Color(0xFFf12280),
                  Color(0XFFf63d76),
                  Color(0xFFf84f70),
                ],
                stops: [
                  0.2,
                  0.4,
                  0.6,
                  0.8,
                ],
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Padding(
                padding: EdgeInsets.only(left: 16),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              title: Text(
                "Ahmed Ashraf",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    itemCount: widget.conversation.messages.length,
                    itemBuilder: (BuildContext context, int position) {
                      if (widget.conversation.messages[position].sender.name ==
                          widget.name) {
                        return _rightMessage(
                            widget.conversation.messages[position]);
                      }
                      return _leftMessage(
                          widget.conversation.messages[position]);
                    },
                  ),
                ),
                _sendMessages(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _rightMessage(Message message) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Transform.translate(
                offset: Offset(24, 34),
                child: Text(
                  message.data,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              Spacer(flex: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.receiver.name,
                    style: TextStyle(
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    message.receiver.phone,
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 12,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(message.receiver.image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Text(
              message.body,
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _leftMessage(Message message) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(message.receiver.image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.receiver.name,
                    style: TextStyle(
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    message.receiver.phone,
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 12,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              Spacer(flex: 1),
              Transform.translate(
                offset: Offset(-30, 34),
                child: Text(
                  message.data,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Text(
              message.body,
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sendMessages(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
      child: Form(
        key: _key,
        child: Stack(
          children: [
            TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                hoverColor: Colors.white,
                contentPadding: EdgeInsets.only(left: 24, right: 24),
                hintText: "Write Message ....",
                hintStyle: TextStyle(color: Colors.grey[300], fontSize: 15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusColor: Colors.white,
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Transform.translate(
                  offset: Offset(-10, 6),
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFef1385),
                          Color(0xFFf12280),
                          Color(0XFFf63d76),
                          Color(0xFFf84f70),
                        ],
                        stops: [
                          0.2,
                          0.4,
                          0.6,
                          0.8,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Transform.translate(
                        offset: Offset(-1, 0),
                        child: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
