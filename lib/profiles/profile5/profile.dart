import 'package:flutter/material.dart';
import 'package:marathon/profiles/profile2/photo_repository.dart';

class User {
  String name, work;

  User({this.name, this.work});
}

class Profile {
  User user;

  Profile({this.user});
}

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
      user: User(
        name: "Ahmed Ashraf",
        work: "Developer",
      ),
    );
  }


}
