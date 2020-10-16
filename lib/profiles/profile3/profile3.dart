import 'package:flutter/material.dart';
import 'package:marathon/profiles/profile2/photo_repository.dart';
import 'package:marathon/profiles/profile3/provider3.dart';
import 'package:marathon/profiles/profile3/user3.dart';
import 'package:marathon/scroll_screen.dart';

class Profile3 extends StatefulWidget {
  @override
  _Profile3State createState() => _Profile3State();
}

class _Profile3State extends State<Profile3> {
  Profile _profile = ProfileProvider.getProfile();

  bool _visitable = false;
  bool _visitable2 = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visitable = true;
      });
    });
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _visitable2 = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ScreenBarItem()));
      },
      child: Theme(
        data: ThemeData(
          fontFamily: 'NotoSansJP',
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/profiles/profile3bg.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                  ),
                ],
              ),
              body: Stack(
                children: [
                  _bodyContent(context),
                  _profileContent(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      top: MediaQuery.of(context).size.height * 0.10,
      bottom: 0,
      child: Container(
        padding: EdgeInsets.only(top: 65),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: ListView(
          children: [
            Text(
              _profile.user.name,
              style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 26,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 8),
              child: Text(
                _profile.user.address,
                style: TextStyle(
                  color: Colors.blueGrey[800],
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: _followContent(context),
            ),
            _dividerBody(context),
            ..._okContent(context),
          ],
        ),
      ),
    );
  }

  List<Widget> _okContent(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 800),
          opacity: _visitable2 ? 1 : 0,
          child: _counterFollowed(context),
        ),
      ),
      _dividerBody(context),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Text(
          "Photos (${_profile.photos.toString()})",
          style: TextStyle(
            fontSize: 18,
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      _listPhotosContent(context),
      ..._aboutMe(context),
      AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _visitable2 ? 1 : 0,
        child: _friends(context),
      ),
      _listContacts(context),
      SizedBox(height: 30),
    ];
  }

  Widget _profileContent(BuildContext context) {
    double _finalPosition = MediaQuery.of(context).size.height * 0.10 - 40;
    double _startPosition = MediaQuery.of(context).size.height * 0.10 - 65;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 600),
      top: _visitable ? _finalPosition : _startPosition,
      left: MediaQuery.of(context).size.width / 2 - 40,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 400),
        opacity: _visitable ? 1 : 0,
        child: Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: ExactAssetImage('assets/images/share/a.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _followContent(BuildContext context) {
    return Align(
      child: MaterialButton(
        color: Color(0xFFf05522),
        onPressed: () {},
        child: AnimatedPadding(
          duration: Duration(milliseconds: 400),
          padding: EdgeInsets.symmetric(
              horizontal: _visitable ? 16 : 2, vertical: 8),
          child: Text(
            'FOLLOW',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }

  Widget _dividerBody(BuildContext context) {
    return Container(
      height: 1,
      color: Colors.grey[100],
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

  Widget _listPhotosContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 6,
      ),
      width: double.infinity,
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          PhotoRepository.imageData2.length,
          (index) {
            return Container(
              width: 130,
              height: 130,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
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

  List<Widget> _aboutMe(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        child: Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.bold,
            fontSize: 16,
            letterSpacing: 1.1,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 600),
          opacity: _visitable2 ? 1 : 0,
          child: Text(
            _profile.user.about,
            style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.w400,
            fontSize: 16,
            height: 1.2,
          ),
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
