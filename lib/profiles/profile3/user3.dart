class User {
  String name, address, about;

  User({this.name, this.address, this.about});
}

class Profile {
  User user;
  int following, followers, friends;
  var photos;

  Profile(
      {this.user, this.following, this.followers, this.friends, this.photos});
}
