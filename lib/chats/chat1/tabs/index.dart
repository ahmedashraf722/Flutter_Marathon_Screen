import 'package:flutter/material.dart';
import 'package:marathon/chats/chat1/conversion.dart';
import 'package:marathon/chats/chat1/message_provider.dart';

class ConversionList extends StatefulWidget {
  @override
  _ConversionListState createState() => _ConversionListState();
}

class _ConversionListState extends State<ConversionList> {
  static List<List<Conversion>> conversations = [
    MessageProvider.getConversation(),
    MessageProvider.getConversations(),
    MessageProvider.getConversations(),
    MessageProvider.getConversations(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: ListView.builder(
        itemCount: conversations.length,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 14),
                child: Text(
                  conversations[position].first.messages.last.data,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ...List.generate(
                conversations[position].length,
                    (index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 24),
                    child: Card(
                      margin: EdgeInsets.only(bottom: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(right: 24),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: ExactAssetImage(conversations[position]
                                  [index]
                                      .users[0]
                                      .image),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  conversations[position][index].users[0].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff111111),
                                      fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  conversations[position][index]
                                      .messages
                                      .last
                                      .body,
                                  style: TextStyle(
                                    color: Color(0xffa6a6a6),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(flex: 1),
                            Transform.translate(
                              offset: Offset(-5, -10),
                              child: Text(
                                conversations[position][index]
                                    .messages
                                    .last
                                    .dataTime,
                                style: TextStyle(color: Color(0xFFf92d86)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ],
          );
        },
      ),
    );
  }
}
