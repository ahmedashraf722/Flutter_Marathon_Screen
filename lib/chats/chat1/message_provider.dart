import 'package:marathon/chats/chat1/conversion.dart';
import 'package:marathon/chats/chat1/message.dart';
import 'package:marathon/chats/chat1/user.dart';

class MessageProvider {
  static Conversion getChats() {
    User user1 = User(
      name: "Ahmed Ashraf",
      image: "assets/images/share/a.jpg",
      phone: "0164-5200-1520",
    );
    User user2 = User(
      name: "Selena Alex",
      image: "assets/images/share/s.jpg",
      phone: "0145-5541-8844",
    );
    return Conversion(
      users: [
        user1,
        user2,
      ],
      messages: [
        Message(
          sender: user2,
          receiver: user1,
          dataTime: "22:36",
          data: "Today, 25",
          body: "Hi Selena How Are You? In each of her images,"
              "I feel the heart that went into taking it.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body: "Hi Ahmed I am fine , thanks ,In each of her images,"
              "I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures ,"
              "she took in the country really took my breath away.",
        ),
        Message(
          sender: user2,
          receiver: user1,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures.",
        ),
        Message(
          sender: user2,
          receiver: user1,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures ,"
              "she took in the country really took my breath away.",
        ),
        Message(
          sender: user2,
          receiver: user1,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures ,"
              "she took in the country really took my breath away.",
        ),
        Message(
          sender: user1,
          receiver: user2,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures ,"
              "she took in the country really took my breath away.",
        ),
        Message(
          sender: user2,
          receiver: user1,
          dataTime: "22:36",
          data: "Today, 25",
          body:
              "In each of her images,I feel the heart that went into taking it,"
              "Like me,she has a deep love for Nepal and the pictures ,",
        ),
      ],
    );
  }

  static List<Conversion> getConversation() {
    User user1 = User(
      name: "Ahmed Ashraf",
      image: "assets/images/share/a.jpg",
    );
    User user2 = User(
      name: "Selena Alex",
      image: "assets/images/share/s.jpg",
    );
    User user3 = User(
      name: "Billie Eilish",
      image: "assets/images/share/eee.jpg",
    );
    User user4 = User(
      name: "Selena Gomez",
      image: "assets/images/share/e.jpg",
    );
    return [
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
    ];
  }

  static List<Conversion> getConversations() {
    User user1 = User(
      name: "Ahmed Ashraf",
      image: "assets/images/share/a.jpg",
    );
    User user2 = User(
      name: "Selena Alex",
      image: "assets/images/share/s.jpg",
    );
    User user3 = User(
      name: "Billie Eilish",
      image: "assets/images/share/eee.jpg",
    );
    User user4 = User(
      name: "Selena Gomez",
      image: "assets/images/share/e.jpg",
    );

    return [
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
      Conversion(
        users: [user1, user2, user3, user4],
        messages: [
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
          Message(
            sender: user1,
            receiver: user2,
            senders: user3,
            receivers: user4,
            dataTime: "22:36",
            data: "Today, 25",
            body: "Hi there How are you",
          ),
        ],
      ),
    ];
  }
}
