import 'package:marathon/profiles/profile2/user2.dart';

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
      user: User(
        name: 'Ahmed Ashraf',
        address: '877 Mansoura Bypass',
        about:
            "With his precious eye for story, great composition, and settled colors, "
            "Ahmed has been my favorite travel photographer for some time now. "
            "He seeks real stories and takes pictures of everyday life. "
            "He travels to places I dream of and captures the moments in a way that makes you feel like you are there, "
            "standing right next to him.",
      ),
      following: 500,
      followers: 6000,
      friends: 250,
    );
  }
}
