import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marathon/profiles/profile2/photo_repository.dart';
import 'package:marathon/profiles/profile2/provider2.dart';
import 'package:marathon/profiles/profile2/user2.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile2> {
  Profile _profile = ProfileProvider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(fontFamily: 'NotoSansJP'),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/profiles/profile2bg.jpg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.45,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.bars),
              ),
            ),
            body: Stack(
              children: [
                _profileTitle(context),
                _bodyProfileContent(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileTitle(BuildContext context) {
    return Positioned(
      top: 20,
      right: 0,
      left: 0,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 135,
                  height: 135,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 115,
                  height: 115,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/share/a.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              _profile.user.name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  letterSpacing: 1.5),
            ),
          ),
          Text(
            _profile.user.address,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyProfileContent(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.33,
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _counterFollowed(context),
            _dividerBody(context),
            ..._aboutMe(context),
            _friends(context),
            SizedBox(height: 12),
            _listContacts(context),
          ],
        ),
      ),
    );
  }

  TextStyle _bottomTextStyle = TextStyle(
    color: Colors.grey[400],
  );

  TextStyle _bottomCounterStyleBar = TextStyle(
    color: Color(0xFF4e4e4e),
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  Widget _counterFollowed(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "FOLLOWERS",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                _profile.followers.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FOLLOWING",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                _profile.following.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "FRIENDS",
                style: _bottomTextStyle,
              ),
              SizedBox(height: 6),
              Text(
                _profile.friends.toString(),
                style: _bottomCounterStyleBar,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _dividerBody(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey[100],
    );
  }

  List<Widget> _aboutMe(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 1.1,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          _profile.user.about,
          style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w400,
            fontSize: 18,
            height: 1.2,
          ),
        ),
      ),
    ];
  }

  Widget _friends(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Text(
        "Friends (${_profile.friends.toString()})",
        style: TextStyle(
          fontSize: 18,
          color: Colors.blueGrey[800],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _listContacts(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 16),
      height: 65,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          PhotoRepository.imageData2.length,
          (index) {
            return Container(
              width: 65,
              margin: EdgeInsets.only(
                right: 24,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                PhotoRepository.imageData2[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
