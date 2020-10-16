class User {
  String name, work, about;

  User({this.name, this.work, this.about});
}

class Profile {
  User user;
  int following, followers, friends;

  Profile({this.user, this.following, this.followers, this.friends});
}
