import 'package:flutter/material.dart';
import 'package:marathon/page_view.dart';
import 'package:marathon/profiles/profile4/provider4.dart';
import 'package:marathon/profiles/profile4/user4.dart';

class Profile4 extends StatefulWidget {
  @override
  _Profile4State createState() => _Profile4State();
}

class _Profile4State extends State<Profile4> {
  Profile _profile = ProfileProvider.getProfile();
  bool _visitable = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _visitable = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PageViewScreens()));
      },
      child: Stack(
        children: [
          Image.asset(
            "assets/images/profiles/profile4bg.jpg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
            body: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: _visitable ? 1 : 0,
                child: _bodyContent(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bodyContent(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.41,
      margin: EdgeInsets.symmetric(vertical: 26, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleProfile(context),
          ..._profileText(context),
          Spacer(flex: 2),
          _dividerBody(context),
          _counterFollowed(context),
        ],
      ),
    );
  }

  Widget _titleProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/share/a.jpg",
                ),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Spacer(flex: 2),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Color(0xFF4e4e4e), width: 1),
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.transparent,
            child: Text("ADD FRIEND"),
          ),
          SizedBox(width: 16),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Color(0xFF4e4e4e),
            child: Text(
              "FOLLOW",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }

  List<Widget> _profileText(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsets.only(left: 12, bottom: 8),
        child: Text(
          _profile.user.name,
          style: TextStyle(
            color: Colors.blueGrey[800],
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 12, bottom: 14),
        child: Text(
          _profile.user.work,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
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
    ];
  }

  Widget _dividerBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
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
}
