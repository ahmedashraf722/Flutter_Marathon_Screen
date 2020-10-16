import 'package:marathon/profiles/profile4/user4.dart';

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
      user: User(
        name: "Ahmed Ashraf",
        work: "Developer",
        about:
            "Flutter developer, have a good knowledge of android development and flutter framework.",
      ),
      followers: 4440,
      following: 556,
      friends: 400,
    );
  }
}
